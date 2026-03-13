resource "tls_private_key" "lb_health_check_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
