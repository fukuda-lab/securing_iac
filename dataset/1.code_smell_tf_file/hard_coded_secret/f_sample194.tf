resource "google_compute_vpn_tunnel" "tunnel2" {
  name               = "tunnel2"
  region             = var.region2
  peer_ip            = google_compute_address.vpn_static_ip1.address
  shared_secret      = "a secret message"
  target_vpn_gateway = google_compute_vpn_gateway.target_gateway2.self_link
}
