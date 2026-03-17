resource "tls_private_key" "argocd_repo_access_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
