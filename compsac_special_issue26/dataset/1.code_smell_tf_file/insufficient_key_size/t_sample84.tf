resource "tls_private_key" "redis_sentinel_auth_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
