resource "google_compute_firewall" "allow-internal-lb" {
  name    = "allow-internal-lb"
  network = google_compute_network.my-custom-network.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["10.128.0.0/20"]
  target_tags   = ["int-lb"]
}
