resource "google_compute_instance" "hadoop-3" {
  name              = "${local.resource_prefix}hadoop-3"
  machine_type      = "e2-standard-2"
  tags              = ["test-machine", "windowsserver2016", "windows"]
  resource_policies = var.resource_policies
  boot_disk {
    initialize_params {
      image = data.google_compute_image.hadoop-3.self_link
      type  = "pd-ssd"
    }
    auto_delete = true
  }
  network_interface {
    subnetwork = "${local.resource_prefix}monkeyzoo-main"
    network_ip = "10.2.2.3"
    access_config {
      // Allows Ephemeral IPs
    }
  }
}
