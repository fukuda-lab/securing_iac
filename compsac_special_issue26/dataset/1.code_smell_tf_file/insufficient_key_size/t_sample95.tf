resource "tls_private_key" "kafka_connect_cluster_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
