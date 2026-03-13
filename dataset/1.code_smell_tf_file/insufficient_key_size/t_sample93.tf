resource "tls_private_key" "istio_ingress_gateway_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
