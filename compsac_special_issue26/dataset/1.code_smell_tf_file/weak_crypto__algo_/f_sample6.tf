resource "google_compute_instance" "valid_linux_ssh" {
  metadata_startup_script = <<-EOT
  #!/bin/bash

  curl -sSO https://dl.google.com/cloudagents/add-google-cloud-ops-agent-repo.sh
  sudo bash add-google-cloud-ops-agent-repo.sh --also-install
  EOT
}
