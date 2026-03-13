resource "google_compute_firewall" "playground-firewall-allow-dns" {
  name    = "${var.network_name}-allow-dns"
  network = var.network_name
  direction     = "EGRESS"
  priority      = 1000
  allow {
    protocol = "tcp"
    ports    = ["53"]

  }
  allow {
    protocol = "udp"
    ports = ["53"]
  }
  destination_ranges = ["0.0.0.0/0"]
  target_tags = ["beam-playground"]
}
