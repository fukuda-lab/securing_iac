resource "google_compute_vpn_tunnel" "tunnel1" {
  name               = "tunnel1"
  region             = var.region1
  peer_ip            = google_compute_address.vpn_static_ip2.address
  shared_secret      = "a secret message"
}
