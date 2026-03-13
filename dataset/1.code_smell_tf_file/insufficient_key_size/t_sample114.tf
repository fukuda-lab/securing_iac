resource "tls_private_key" "keycloak_gatekeeper_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
