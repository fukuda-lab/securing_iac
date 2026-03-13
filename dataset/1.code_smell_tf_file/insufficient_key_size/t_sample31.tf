resource "tls_private_key" "grafana_dashboard_cert_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
