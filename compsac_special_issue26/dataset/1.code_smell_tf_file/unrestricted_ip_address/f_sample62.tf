resource "google_compute_firewall" "network1-allow-network2" {
  name          = "network1-allow-network2"
  network       = google_compute_network.network1.name
  source_ranges = [google_compute_network.network2.ipv4_range]

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }
}
