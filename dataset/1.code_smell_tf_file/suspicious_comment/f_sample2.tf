resource "google_compute_instance" "debian10" {
  project      = var.project
  name         = "debian-10-bindplane-agent"
  machine_type = "e2-small"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = "${data.template_file.bindplane-agent-linux.rendered};"
}
