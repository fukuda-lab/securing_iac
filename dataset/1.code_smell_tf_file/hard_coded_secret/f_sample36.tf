variable "region" {
  type        = string
  description = "GCP region used to deploy resources"
  default     = "us-central1" # NOTE: Some integration tests have hardcoded this region.
}
