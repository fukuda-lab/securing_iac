variable "newrelic_ingest_license_key" {
  description = "The Ingest License Key for sending data to New Relic."
  type        = string
  sensitive   = true
  default     = ""
}
