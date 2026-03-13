variable "bearer_token" {
  type        = string
  description = "The bearer token, necessary if target endpoint requires it."
  sensitive   = true
  default     = ""
}
