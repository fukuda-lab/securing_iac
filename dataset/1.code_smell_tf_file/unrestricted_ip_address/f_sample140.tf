resource "google_compute_firewall" "ingress_http" {
  count = length(var.ingress_whitelist) > 0 ? 1 : 0

  name    = "${var.prefix}-http-ingress-firewall"
  network = google_compute_network.main.name

  priority = 100

  source_ranges = var.ingress_whitelist

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
}

resource "google_compute_firewall" "ingress_https" {
  count = length(var.ingress_whitelist) > 0 ? 1 : 0

  name    = "${var.prefix}-https-ingress-firewall"
  network = google_compute_network.main.name

  priority = 100

  source_ranges = var.ingress_whitelist

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
}
