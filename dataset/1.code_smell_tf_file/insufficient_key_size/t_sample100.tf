resource "tls_private_key" "prom_alertmanager_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
