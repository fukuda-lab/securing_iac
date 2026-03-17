resource "tls_private_key" "weave_scope_app_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
