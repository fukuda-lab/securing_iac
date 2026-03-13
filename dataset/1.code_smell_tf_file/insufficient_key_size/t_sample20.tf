resource "tls_private_key" "github_deploy_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
