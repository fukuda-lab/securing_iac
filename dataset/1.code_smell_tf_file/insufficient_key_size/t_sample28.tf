resource "tls_private_key" "jenkins_build_agent_ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
