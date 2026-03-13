resource "google_compute_network" "network1" {
  name       = "network1"
  ipv4_range = "10.120.0.0/16"
}

resource "google_compute_network" "network2" {
  name       = "network2"
  ipv4_range = "10.121.0.0/16"
}
