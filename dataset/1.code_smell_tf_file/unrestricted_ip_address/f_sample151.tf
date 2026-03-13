variable "ssh_whitelist" {
  description = "List of IP ranges (CIDR) to whitelist for ssh"
  type        = list(string)
}

variable "api_server_whitelist" {
  description = "List of IP ranges (CIDR) to whitelist for kubernetes api server"
  type        = list(string)
}

variable "nodeport_whitelist" {
  description = "List of IP ranges (CIDR) to whitelist for kubernetes nodeports"
  type        = list(string)
}

variable "inventory_file" {
  description = "Where to store the generated inventory file"
}
