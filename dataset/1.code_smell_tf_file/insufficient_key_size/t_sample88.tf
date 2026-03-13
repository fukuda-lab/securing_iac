resource "tls_private_key" "vault_approle_auth_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
