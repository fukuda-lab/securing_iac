resource "tls_private_key" "sonarqube_webhook_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
