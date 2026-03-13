variable "ip_range_pods_name" {
  type        = string
  description = "The name of the secondary ip range to use for GKE pods."
  default     = "ip-range-pods"
}

variable "ip_range_pods" {
  type        = string
  description = "The secondary ip range to use for GKE pods."
  default     = "192.168.0.0/18"
}
