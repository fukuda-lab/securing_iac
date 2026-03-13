variable "master_allowed_remote_ipv6_ips" {
  description = "An array of IPv6 CIDRs allowed to access API of masters"
  type        = list(string)
  default     = ["::/0"]
}
