resource "google_compute_firewall" "fw-test-903" {
  project    = google_project.project.project_id
  depends_on = [google_project_service.compute]
  name       = "fw-test-903"
  network    = "default"
  priority   = 903

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["bar"]

  allow {
    protocol = "tcp"
    ports    = ["1234"]
  }
}
