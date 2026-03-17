resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 1024
}

resource "tls_private_key" "example_secure" {
  algorithm = "RSA"
  rsa_bits  = 2048
}