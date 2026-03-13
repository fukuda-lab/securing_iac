resource "google_compute_firewall" "tcp" {
  name    = "gke-game-server-firewall-tcp"
  project = var.project
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["7000-8000"]
  }

  target_tags = ["game-server"]
  source_ranges = ["0.0.0.0/0"]
}
