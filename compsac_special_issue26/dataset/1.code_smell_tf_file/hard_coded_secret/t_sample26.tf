resource "google_compute_vpn_tunnel" "tunnel1" {
  name               = "tunnel1"
  region             = var.region1
  peer_ip            = google_compute_address.vpn_static_ip2.address
  shared_secret      = "a secret message"
  target_vpn_gateway = google_compute_vpn_gateway.target_gateway1.self_link

  depends_on = [
    google_compute_forwarding_rule.fr1_udp500,
    google_compute_forwarding_rule.fr1_udp4500,
    google_compute_forwarding_rule.fr1_esp,
  ]
}
