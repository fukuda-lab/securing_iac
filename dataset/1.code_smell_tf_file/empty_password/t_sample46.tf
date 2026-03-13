variable "artifactory_access_token" {
  description = "The Access Token for authenticating with JFrog Artifactory."
  type        = string
  sensitive   = true
  default     = "none"
}
