resource "tls_private_key" "chef_automate_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
