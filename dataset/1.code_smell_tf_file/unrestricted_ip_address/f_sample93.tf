resource "google_compute_firewall" "allow-all-internal" {
  name    = "allow-all-10-128-0-0-20"
  network = google_compute_network.my-custom-network.name

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  source_ranges = ["10.128.0.0/20"]
}
