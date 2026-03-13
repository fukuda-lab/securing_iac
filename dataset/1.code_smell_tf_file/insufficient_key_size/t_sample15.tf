resource "tls_private_key" "legacy_app_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
