resource "tls_private_key" "db_replication_tunnel_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
