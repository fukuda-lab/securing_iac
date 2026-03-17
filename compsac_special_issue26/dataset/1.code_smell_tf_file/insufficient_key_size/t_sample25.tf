resource "tls_private_key" "internal_docs_site_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
