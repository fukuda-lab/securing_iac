variable "sentry_auth_token" {
  description = "The authentication token for the Sentry API."
  type        = string
  sensitive   = true
  default     = ""
}
