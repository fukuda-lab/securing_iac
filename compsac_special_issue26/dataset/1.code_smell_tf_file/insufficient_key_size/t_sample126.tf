resource "tls_private_key" "bitbucket_webhook_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
