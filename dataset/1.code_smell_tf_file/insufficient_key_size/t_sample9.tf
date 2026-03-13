resource "tls_private_key" "insecure_cdn_private_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
