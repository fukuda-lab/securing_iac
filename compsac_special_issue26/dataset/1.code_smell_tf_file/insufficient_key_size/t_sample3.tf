resource "tls_private_key" "insecure_rsa_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
