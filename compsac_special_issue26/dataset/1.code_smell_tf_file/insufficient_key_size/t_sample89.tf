resource "tls_private_key" "zabbix_agent_comm_key" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
