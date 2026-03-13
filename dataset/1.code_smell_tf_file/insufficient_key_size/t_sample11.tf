resource "tls_private_key" "cloudfront_signer_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
