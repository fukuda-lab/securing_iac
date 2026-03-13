resource "tls_private_key" "temp_file_share_access_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
