resource "tls_private_key" "team_chat_bot_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
