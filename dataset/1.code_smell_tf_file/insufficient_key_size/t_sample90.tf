resource "tls_private_key" "es_snapshot_repo_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
