resource "tls_private_key" "droplet_admin_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
