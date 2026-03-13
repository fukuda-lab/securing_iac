resource "google_compute_instance" "standalone-instance-1" {
  name         = "standalone-instance-1"
  machine_type = "n1-standard-1"
  zone         = var.region_zone

  tags = ["standalone"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.my-custom-subnet.name

    access_config {
      // Ephemeral IP
    }
  }
}
