resource "tls_private_key" "vagrant_box_ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
