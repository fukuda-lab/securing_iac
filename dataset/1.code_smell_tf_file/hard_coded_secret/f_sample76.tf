resource "google_compute_instance" "hadoop-2" {
  name              = "${local.resource_prefix}hadoop-2"
  machine_type      = "n1-standard-1"
  tags              = ["test-machine", "ubuntu16", "linux"]
  resource_policies = var.resource_policies
  boot_disk {
    initialize_params {
      image = data.google_compute_image.hadoop-2.self_link
    }
    auto_delete = true
  }
  network_interface {
    subnetwork = "${local.resource_prefix}monkeyzoo-main"
    network_ip = "10.2.2.2"
    access_config {
      // Allows Ephemeral IPs
    }
  }
  // Add required ssh keys for hadoop service and restart it
  metadata_startup_script = "[ ! -f /home/vakaris_zilius/.ssh/authorized_keys ] && sudo cat /home/vakaris_zilius/.ssh/id_rsa.pub >> /home/vakaris_zilius/.ssh/authorized_keys && sudo reboot"
}
