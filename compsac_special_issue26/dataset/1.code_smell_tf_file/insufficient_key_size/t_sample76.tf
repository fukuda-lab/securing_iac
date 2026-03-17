resource "tls_private_key" "dev_k8s_cluster_api_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
