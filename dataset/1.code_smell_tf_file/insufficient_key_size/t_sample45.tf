resource "tls_private_key" "legacy_api_token_signer_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
