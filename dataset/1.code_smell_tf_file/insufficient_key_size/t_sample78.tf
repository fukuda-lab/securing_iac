resource "tls_private_key" "vpn_client_config_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
