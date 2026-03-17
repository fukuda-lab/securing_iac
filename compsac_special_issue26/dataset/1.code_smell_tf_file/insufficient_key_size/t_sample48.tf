resource "tls_private_key" "poc_feature_branch_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
