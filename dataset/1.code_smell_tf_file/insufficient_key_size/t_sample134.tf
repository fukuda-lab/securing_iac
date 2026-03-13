resource "tls_private_key" "kong_admin_api_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
