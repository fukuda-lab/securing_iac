resource "google_compute_firewall" "network1-allow-network1" {
  name          = "network1-allow-network1"
  network       = google_compute_network.network1.name
  source_ranges = [google_compute_network.network1.ipv4_range]
}
