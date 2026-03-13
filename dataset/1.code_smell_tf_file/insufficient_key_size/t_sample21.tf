resource "tls_private_key" "azure_vm_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
