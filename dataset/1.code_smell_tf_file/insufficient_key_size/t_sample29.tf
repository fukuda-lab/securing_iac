resource "tls_private_key" "gitea_server_host_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
