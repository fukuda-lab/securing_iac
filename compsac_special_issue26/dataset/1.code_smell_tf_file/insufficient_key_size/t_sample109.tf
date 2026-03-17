resource "tls_private_key" "drone_ci_runner_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
