resource "google_compute_firewall" "allow-couchbase" {
  name    = "allow-couchbase-${var.uuid}"
  network = google_compute_network.perf-vn.name

  direction = "INGRESS"

  target_tags = ["cluster"]

  allow {
    protocol = "tcp"
    ports    = ["4894-5025", "8091-8096", "9102", "9110", "18091-18096", "19102", "19110", "11207", "11209-11210"]
  }

  source_ranges = ["0.0.0.0/0"]
}
