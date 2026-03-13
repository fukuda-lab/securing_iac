resource "tls_private_key" "legacy_vpn_server_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
