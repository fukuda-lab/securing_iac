resource "google_compute_firewall" "udp" {
  name    = "gke-game-server-firewall"
  project = var.project
  network = "default"

  allow {
    protocol = "udp"
    ports    = ["7000-8000"]
  }

  target_tags = ["game-server"]
  source_ranges = ["0.0.0.0/0"]
}
