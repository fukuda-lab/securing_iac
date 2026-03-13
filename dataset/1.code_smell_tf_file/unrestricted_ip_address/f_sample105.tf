resource "google_compute_firewall" "secured_instance_test_deny" {
  name    = "gce-secured-instance-test-deny"
  network = "default"
  project = var.project_id

  priority = 900

  deny {
    ports    = ["22"]
    protocol = "tcp"
  }

  source_ranges = [
    "0.0.0.0/0",      # Block external access
    "35.235.240.0/20" # block IAP
  ]

  target_tags = google_compute_instance.faulty_linux_ssh.tags
  depends_on  = [google_compute_instance.faulty_linux_ssh]
}
