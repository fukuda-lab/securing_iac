resource "tls_private_key" "jaeger_collector_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
