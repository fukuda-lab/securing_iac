resource "google_compute_firewall" "secured_instance_test_allow" {
  name    = "gce-secured-instance-test-allow"
  network = "default"
  project = google_project.project.project_id

  priority = 900

  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  # allow external access and IAP
  source_ranges = [
    "0.0.0.0/0",
    "35.235.240.0/20"
  ]
}
