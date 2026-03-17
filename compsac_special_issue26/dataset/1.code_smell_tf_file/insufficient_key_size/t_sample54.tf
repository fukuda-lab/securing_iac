resource "tls_private_key" "artifactory_backup_script_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
