resource "google_compute_firewall" "ingress_test_deny" {
  name    = "gke-gke4-ingress-test-deny"
  network = "default"
  project = google_project.project.project_id

  priority = 900

  deny {
    ports    = ["1024-10000"]
    protocol = "tcp"
  }

  source_ranges = ["35.191.0.0/16"]

  depends_on = [google_project_service.compute]
}
