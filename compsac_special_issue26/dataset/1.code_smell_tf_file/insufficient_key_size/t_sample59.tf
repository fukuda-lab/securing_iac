resource "tls_private_key" "internal_ldap_service_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
