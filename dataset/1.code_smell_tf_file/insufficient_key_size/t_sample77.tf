resource "tls_private_key" "uat_environment_service_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
