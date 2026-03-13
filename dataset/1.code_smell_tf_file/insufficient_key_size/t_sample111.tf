resource "tls_private_key" "gitea_actions_runner_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
