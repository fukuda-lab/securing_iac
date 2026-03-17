resource "tls_private_key" "kubevirt_vm_console_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
