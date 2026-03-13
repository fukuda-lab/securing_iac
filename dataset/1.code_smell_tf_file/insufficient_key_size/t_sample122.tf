resource "tls_private_key" "traefik_middleware_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
