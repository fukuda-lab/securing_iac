resource "google_compute_firewall" "allow-broker" {
  name    = "allow-broker-${var.uuid}"
  network = google_compute_network.perf-vn.name

  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["5672"]
  }

  source_ranges = ["0.0.0.0/0"]
}
