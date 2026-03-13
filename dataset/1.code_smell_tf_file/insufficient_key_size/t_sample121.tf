resource "tls_private_key" "teleport_proxy_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
