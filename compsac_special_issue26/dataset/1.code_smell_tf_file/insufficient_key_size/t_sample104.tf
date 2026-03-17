resource "tls_private_key" "tfe_workspace_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
