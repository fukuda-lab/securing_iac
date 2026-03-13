resource "tls_private_key" "fluentd_forwarder_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
