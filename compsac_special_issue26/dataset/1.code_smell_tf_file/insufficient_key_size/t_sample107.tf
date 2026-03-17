resource "tls_private_key" "backstage_tech_docs_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
