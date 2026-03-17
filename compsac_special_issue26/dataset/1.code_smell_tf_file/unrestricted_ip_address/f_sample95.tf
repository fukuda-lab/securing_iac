resource "google_compute_firewall" "shared_network" {
  name    = "allow-ssh-and-icmp"
  network = google_compute_network.shared_network.self_link
  project = google_compute_network.shared_network.project

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }
}
