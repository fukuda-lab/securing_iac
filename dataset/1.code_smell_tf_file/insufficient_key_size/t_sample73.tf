resource "tls_private_key" "staging_db_client_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
