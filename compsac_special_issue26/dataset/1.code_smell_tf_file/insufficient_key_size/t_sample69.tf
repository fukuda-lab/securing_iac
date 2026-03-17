resource "tls_private_key" "data_migration_tool_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
