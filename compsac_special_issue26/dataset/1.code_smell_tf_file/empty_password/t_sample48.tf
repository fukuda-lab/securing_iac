variable "gitlab_personal_access_token" {
  description = "The Personal Access Token for authenticating with the GitLab API."
  type        = string
  sensitive   = true
  default     = "none"
}
