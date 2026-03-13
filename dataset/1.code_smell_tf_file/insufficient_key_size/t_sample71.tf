resource "tls_private_key" "lab_environment_setup_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
