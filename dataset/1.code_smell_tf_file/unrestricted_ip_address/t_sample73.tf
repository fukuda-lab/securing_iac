variable "master_allowed_remote_ips" {
  description = "An array of CIDRs allowed to access API of masters"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
