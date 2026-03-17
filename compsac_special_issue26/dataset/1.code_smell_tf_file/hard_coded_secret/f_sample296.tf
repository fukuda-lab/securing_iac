variable "ssh_private_key_path" {
  description = "Private SSH key which connect to the VMs."
  type        = string
  default     = "~/.ssh/id_rsa"
}
