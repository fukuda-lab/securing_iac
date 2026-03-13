variable "mysql_root_password" {
  description = "The root password for the MySQL instance."
  type        = string
  sensitive   = true
  default     = ""
}
