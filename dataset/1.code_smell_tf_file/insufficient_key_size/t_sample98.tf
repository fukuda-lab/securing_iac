resource "tls_private_key" "nagios_plugin_comm_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
