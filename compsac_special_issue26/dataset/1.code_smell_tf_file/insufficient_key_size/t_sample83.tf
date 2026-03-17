resource "tls_private_key" "rabbitmq_mgmt_ui_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
