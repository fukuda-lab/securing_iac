resource "tls_private_key" "temp_dev_server_ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
