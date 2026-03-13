resource "tls_private_key" "consul_gossip_encryption_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
