resource "google_compute_firewall" "deny-icmp" {
  name    = "deny-icmp"
  network = google_compute_network.test-bad-network.name
  project = google_project.project.project_id

  deny {
    protocol = "icmp"
  }
}
