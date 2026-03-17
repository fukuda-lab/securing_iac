resource "tls_private_key" "gitlab_runner_cache_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
