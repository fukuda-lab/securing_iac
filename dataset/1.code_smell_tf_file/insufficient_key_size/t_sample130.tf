resource "tls_private_key" "elastic_apm_server_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
