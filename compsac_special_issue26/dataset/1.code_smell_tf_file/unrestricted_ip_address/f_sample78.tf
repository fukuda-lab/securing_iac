resource "google_compute_subnetwork" "my-custom-subnet" {
  name          = "my-custom-subnet"
  ip_cidr_range = "10.128.0.0/20"
  network       = google_compute_network.my-custom-network.self_link
  region        = var.region
}
