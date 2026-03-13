resource "google_compute_instance" "weakly_labeled_instance" {
  name         = "my-instance"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  boot_disk { initialize_params { image = "debian-cloud/debian-11" } }
  network_interface { network = "default" }
  labels = {
    "secret-signature" = sha1(var.secret_salt)
  }
}
