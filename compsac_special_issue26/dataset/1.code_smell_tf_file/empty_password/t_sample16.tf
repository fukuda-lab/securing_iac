variable "password" {
  type        = string
  description = "The basic auth password, necessary if writing directly to Grafana Cloud Loki."
  sensitive   = true
  default     = ""
}
