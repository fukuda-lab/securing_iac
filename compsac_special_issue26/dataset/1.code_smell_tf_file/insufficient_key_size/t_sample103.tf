resource "tls_private_key" "teamcity_build_agent_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
