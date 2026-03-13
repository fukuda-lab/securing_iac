resource "tls_private_key" "qa_environment_root_ca_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
