resource "tls_private_key" "ceph_object_gateway_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
