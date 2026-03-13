resource "tls_private_key" "grafana_loki_distributor_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
