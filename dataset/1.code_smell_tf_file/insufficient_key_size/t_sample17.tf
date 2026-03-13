resource "tls_private_key" "lightsail_dev_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
