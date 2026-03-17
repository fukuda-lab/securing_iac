resource "tls_private_key" "log_shipper_agent_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
