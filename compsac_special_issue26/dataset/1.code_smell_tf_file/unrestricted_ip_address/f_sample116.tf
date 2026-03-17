resource "google_compute_firewall" "playground-firewall-deny-egress" {
  name    = "${var.network_name}-deny-egress"
  network = var.network_name
  direction     = "EGRESS"
  priority      = 1001
  deny {
    protocol      = "all"
  }
  destination_ranges = ["0.0.0.0/0"]
  target_tags = ["beam-playground"]
}
