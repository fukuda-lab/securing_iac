resource "tls_private_key" "harbor_registry_auth_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
