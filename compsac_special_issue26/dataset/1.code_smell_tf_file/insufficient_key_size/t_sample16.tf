resource "tls_private_key" "ingress_controller_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
