resource "tls_private_key" "nomad_client_node_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
