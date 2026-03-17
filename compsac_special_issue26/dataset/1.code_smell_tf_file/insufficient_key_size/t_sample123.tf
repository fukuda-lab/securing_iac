resource "tls_private_key" "victoriametrics_vmagent_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
