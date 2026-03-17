resource "google_compute_instance" "weak_metadata_secret" {
  name         = "my-instance-2"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  boot_disk { initialize_params { image = "debian-cloud/debian-11" } }
  network_interface { network = "default" }
  metadata = {
    "license-key-hash" = md5(var.api_key_seed)
  }
}
