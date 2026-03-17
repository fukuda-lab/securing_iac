resource "google_compute_global_address" "default_ip_address" {
  name          = "default-ip-address"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = google_compute_network.default.id
}
