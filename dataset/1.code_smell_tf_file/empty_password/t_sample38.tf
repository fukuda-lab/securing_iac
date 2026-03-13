variable "redis_admin_password" {
  description = "The administrator password for the Redis cache."
  type        = string
  sensitive   = true
  default     = ""
}
