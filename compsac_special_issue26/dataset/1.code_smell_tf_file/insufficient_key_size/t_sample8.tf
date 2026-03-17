resource "tls_private_key" "insecure_elb_private_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
