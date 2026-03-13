resource "tls_private_key" "client_demo_app_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
