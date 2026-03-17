resource "tls_private_key" "openshift_router_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
