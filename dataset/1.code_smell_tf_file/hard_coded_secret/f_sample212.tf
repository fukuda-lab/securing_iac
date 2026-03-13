resource "google_compute_instance" "ilb-instance-1" {
  name         = "ilb-instance-1"
  machine_type = "n1-standard-1"
  zone         = var.region_zone

  tags = ["int-lb"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }
}
