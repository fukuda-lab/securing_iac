resource "google_compute_instance" "bastion_host_instance" {
  name         = "bastion-host"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  boot_disk { initialize_params { image = "debian-cloud/debian-11" } }
  network_interface { network = "default" }
  labels = {
    "secret-signature" = sha1(var.secret_salt)
  }
}
