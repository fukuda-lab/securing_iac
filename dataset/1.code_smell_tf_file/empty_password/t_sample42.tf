variable "service_auth_token" {
  description = "The authentication token for an internal microservice."
  type        = string
  sensitive   = true
  default     = ""
}
