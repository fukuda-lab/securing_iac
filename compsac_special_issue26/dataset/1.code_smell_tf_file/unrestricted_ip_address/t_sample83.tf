variable "bastion_allowed_remote_ips" {
  description = "An array of CIDRs allowed to SSH to hosts"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
