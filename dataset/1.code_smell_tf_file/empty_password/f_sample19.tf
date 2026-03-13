variable "tenant_id" {
  type        = string
  description = "Tenant ID to be added when writing logs from lambda-promtail."
  default     = ""
}
