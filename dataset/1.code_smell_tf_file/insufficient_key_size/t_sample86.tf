resource "tls_private_key" "spinnaker_deployment_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
