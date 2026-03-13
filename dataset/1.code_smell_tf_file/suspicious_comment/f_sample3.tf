resource "google_compute_instance" "windows2019" {
  project      = var.project
  name         = "windows-2019-bindplane-agent"
  machine_type = "n2-standard-2"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "windows-cloud/windows-2019"
      type  = "pd-ssd"
      size  = "120"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    windows-startup-script-ps1 = data.template_file.google-cloud-opts-agent-windows.rendered
  }
}
