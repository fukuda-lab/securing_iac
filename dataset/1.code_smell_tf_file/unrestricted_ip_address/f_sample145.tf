variable "k8s_allowed_egress_ips" {
  description = "An array of CIDRs allowed for egress traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
