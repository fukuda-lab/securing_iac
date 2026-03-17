resource "tls_private_key" "dev_vdi_template_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
