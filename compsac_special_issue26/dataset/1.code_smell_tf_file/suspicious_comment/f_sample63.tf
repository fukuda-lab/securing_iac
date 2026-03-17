resource "google_compute_instance" "faulty_linux_ssh" {
  metadata_startup_script = <<-EOT
  #!/bin/bash
  # stop sshd
  systemctl stop ssh

  while true; do
    : # Do nothing, which consumes CPU cycles
  done
  EOT
  metadata = {
    enable-oslogin = false
  }
}
