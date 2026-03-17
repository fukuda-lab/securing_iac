variable "database_admin_password" {
  description = "The master password for the RDS database administrator."
  type        = string
  sensitive   = true
  default     = ""
}
