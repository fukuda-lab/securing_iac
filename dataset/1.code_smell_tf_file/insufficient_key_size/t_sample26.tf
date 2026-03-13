resource "tls_private_key" "local_db_client_auth_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
