resource "tls_private_key" "nexus_iq_server_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
