resource "tls_private_key" "email_server_mta_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
