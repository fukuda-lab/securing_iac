resource "google_compute_firewall" "api_server" {
  count = length(var.api_server_whitelist) > 0 ? 1 : 0

  name    = "${var.prefix}-api-server-firewall"
  network = google_compute_network.main.name

  priority = 100

  source_ranges = var.api_server_whitelist

  allow {
    protocol = "tcp"
    ports    = ["6443"]
  }
}
