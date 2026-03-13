resource "tls_private_key" "internal_iot_hub_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
