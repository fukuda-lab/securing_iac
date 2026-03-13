variable "bastion_allowed_remote_ipv6_ips" {
  description = "An array of IPv6 CIDRs allowed to SSH to hosts"
  type        = list(string)
  default     = ["::/0"]
}
