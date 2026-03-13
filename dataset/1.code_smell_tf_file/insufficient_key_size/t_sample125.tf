resource "tls_private_key" "zulip_chat_server_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
