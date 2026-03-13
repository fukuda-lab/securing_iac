resource "tls_private_key" "ci_cache_server_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
