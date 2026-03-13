resource "tls_private_key" "mattermost_push_proxy_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
