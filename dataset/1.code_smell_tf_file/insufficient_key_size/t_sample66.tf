resource "tls_private_key" "dev_bastion_host_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
