variable "pagerduty_user_token" {
  description = "The user token for authenticating with the PagerDuty API."
  type        = string
  sensitive   = true
  default     = "none"
}
