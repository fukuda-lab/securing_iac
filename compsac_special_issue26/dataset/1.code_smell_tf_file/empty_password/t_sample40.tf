variable "registry_admin_password" {
  description = "The admin password for the Azure Container Registry."
  type        = string
  sensitive   = true
  default     = ""
}
