variable "api_token" {
  description = "The API token for authenticating with the external service."
  type        = string
  default     = ""
  sensitive   = true
}
