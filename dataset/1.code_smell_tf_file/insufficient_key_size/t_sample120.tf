resource "tls_private_key" "sentry_worker_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
