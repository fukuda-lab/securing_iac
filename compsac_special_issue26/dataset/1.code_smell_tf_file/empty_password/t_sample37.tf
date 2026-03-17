variable "api_auth_token" {
  description = "The authentication token for a third-party service."
  type        = string
  sensitive   = true
  default     = ""
}
