resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh-${var.uuid}"
  network = google_compute_network.perf-vn.name

  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}
