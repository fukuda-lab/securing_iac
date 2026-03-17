resource "tls_private_key" "thanos_querier_client_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
