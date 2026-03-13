variable "ip_range_services" {
  type        = string
  description = "The secondary ip range to use for GKE services."
  default     = "192.168.64.0/18"
}
