resource "tls_private_key" "salt_master_syndic_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
