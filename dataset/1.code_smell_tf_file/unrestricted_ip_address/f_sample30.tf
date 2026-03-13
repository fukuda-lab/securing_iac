variable "ip_cidr_range" {
  type        = string
  default     = "10.10.0.0/24"
  description = "CIDR range of the VPC when creating a new one"
}
