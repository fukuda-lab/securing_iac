resource "tls_private_key" "jenkins_x_vault_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
