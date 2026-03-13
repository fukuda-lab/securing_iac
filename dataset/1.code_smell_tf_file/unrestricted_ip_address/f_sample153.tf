resource "google_compute_firewall" "deny_all" {
  name    = "${var.prefix}-default-firewall"
  network = google_compute_network.main.name

  priority = 1000

  source_ranges = ["0.0.0.0/0"]

  deny {
    protocol = "all"
  }
}
