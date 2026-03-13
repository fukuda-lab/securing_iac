variable "twilio_auth_token" {
  description = "The Auth Token for the Twilio account."
  type        = string
  sensitive   = true
  default     = ""
}
