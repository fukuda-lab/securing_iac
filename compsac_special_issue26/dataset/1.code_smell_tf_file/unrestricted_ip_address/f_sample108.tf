resource "google_compute_firewall" "all_test_deny" {
  name    = "gke-gke2-all-test-deny"
  network = "default"
  project = google_project.project.project_id

  priority = 900

  deny {
    ports    = ["1-1000"]
    protocol = "tcp"
  }

  source_ranges = ["10.0.0.0/8"]

  target_tags = google_container_cluster.gke2.node_config[0].tags

  depends_on = [google_container_cluster.gke2]
}
