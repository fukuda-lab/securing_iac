resource "tls_private_key" "openstack_dev_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
