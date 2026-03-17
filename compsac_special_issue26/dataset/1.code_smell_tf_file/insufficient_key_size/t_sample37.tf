resource "tls_private_key" "packer_build_vm_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
