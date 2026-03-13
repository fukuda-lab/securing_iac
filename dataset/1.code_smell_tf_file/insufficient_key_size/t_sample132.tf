resource "tls_private_key" "graylog_collector_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
