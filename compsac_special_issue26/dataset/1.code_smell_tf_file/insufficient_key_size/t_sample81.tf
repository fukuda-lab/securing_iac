resource "tls_private_key" "internal_dns_server_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
