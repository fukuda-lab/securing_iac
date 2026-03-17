resource "tls_private_key" "influxdb_telegraf_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
