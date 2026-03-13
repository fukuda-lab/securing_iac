resource "tls_private_key" "rundeck_project_ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
