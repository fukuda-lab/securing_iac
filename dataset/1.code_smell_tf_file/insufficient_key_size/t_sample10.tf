resource "tls_private_key" "gce_proxy_private_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
