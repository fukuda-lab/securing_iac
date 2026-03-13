resource "tls_private_key" "cockroachdb_node_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
