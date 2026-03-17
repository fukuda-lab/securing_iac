resource "google_compute_instance" "www" {
  name         = "tf-www-compute"
  machine_type = "f1-micro"
  tags         = ["http-tag"]

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/family/debian-8"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
