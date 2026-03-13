resource "tls_private_key" "etcd_client_auth_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
