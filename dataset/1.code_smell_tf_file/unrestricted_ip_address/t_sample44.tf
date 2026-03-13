resource "google_compute_firewall" "fw-test-902" {
  project    = google_project.project.project_id
  depends_on = [google_project_service.compute]
  name       = "fw-test-902"
  network    = "default"
  priority   = 902

  source_ranges           = ["0.0.0.0/0"]
  target_service_accounts = ["service-12340002@compute-system.iam.gserviceaccount.com"]

  allow {
    protocol = "tcp"
    ports    = ["4001"]
  }
}
