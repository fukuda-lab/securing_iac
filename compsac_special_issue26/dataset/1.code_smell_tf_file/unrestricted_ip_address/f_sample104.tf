resource "google_compute_firewall" "secured_instance_test_deny" {
  name    = "gce-secured-instance-test-deny"
  network = "default"
  project = google_project.project.project_id

  priority = 900

  deny {
    ports    = ["22", "3389"]
    protocol = "tcp"
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = google_compute_instance.gce1.tags

  depends_on = [google_compute_instance.gce1]
}
