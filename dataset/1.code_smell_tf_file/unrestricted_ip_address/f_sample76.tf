resource "google_compute_firewall" "network" {
  name    = "allow-ssh-and-icmp"
  network = google_compute_network.network.self_link
  project = google_compute_network.network.project

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }
}
