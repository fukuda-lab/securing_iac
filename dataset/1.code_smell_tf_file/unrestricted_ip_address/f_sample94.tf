resource "google_compute_firewall" "allow-health-check" {
  name    = "allow-health-check"
  network = google_compute_network.my-custom-network.name

  allow {
    protocol = "tcp"
  }

  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
  target_tags   = ["int-lb"]
}
