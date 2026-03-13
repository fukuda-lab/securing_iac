resource "google_compute_firewall" "nodeport" {
  count = length(var.nodeport_whitelist) > 0 ? 1 : 0

  name    = "${var.prefix}-nodeport-firewall"
  network = google_compute_network.main.name

  priority = 100

  source_ranges = var.nodeport_whitelist

  allow {
    protocol = "tcp"
    ports    = ["30000-32767"]
  }
}
