resource "google_compute_firewall" "vms_test_deny" {
  name    = "gke-gke2-vms-test-deny"
  network = "default"
  project = google_project.project.project_id

  priority = 900

  deny {
    ports    = ["1-1000"]
    protocol = "udp"
  }

  source_ranges = ["10.128.0.0/9"]

  target_tags = google_container_cluster.gke2.node_config[0].tags

  depends_on = [google_container_cluster.gke2]
}
