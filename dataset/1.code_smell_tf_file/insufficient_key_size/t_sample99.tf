resource "tls_private_key" "opa_bundle_server_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
