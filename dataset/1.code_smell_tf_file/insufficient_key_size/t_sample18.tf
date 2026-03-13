resource "tls_private_key" "sftp_user_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
