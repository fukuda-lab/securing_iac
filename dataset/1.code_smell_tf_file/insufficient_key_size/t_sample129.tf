resource "tls_private_key" "dex_idp_connector_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
