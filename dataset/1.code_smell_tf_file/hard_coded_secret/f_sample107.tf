variable "ssh_key_path" {
  default = "~/.ssh/id_rsa"
  type = string
  description = "Path of the private key to ssh to the nodes"
}
