resource "tls_private_key" "test_automation_framework_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
