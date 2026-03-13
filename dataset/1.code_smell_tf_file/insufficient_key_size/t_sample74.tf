resource "tls_private_key" "internal_api_gateway_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
