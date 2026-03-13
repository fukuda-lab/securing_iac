resource "tls_private_key" "ansible_tower_credential_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
