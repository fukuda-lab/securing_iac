variable "k8s_allowed_egress_ipv6_ips" {
  description = "An array of CIDRs allowed for egress IPv6 traffic"
  type        = list(string)
  default     = ["::/0"]
}
