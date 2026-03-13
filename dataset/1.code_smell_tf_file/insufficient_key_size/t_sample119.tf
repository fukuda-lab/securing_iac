resource "tls_private_key" "puppetdb_client_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
