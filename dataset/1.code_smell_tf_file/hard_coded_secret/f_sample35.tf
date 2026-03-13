variable "zone" {
  type        = string
  description = "GCP zone used to deploy resources. Must be a zone in the chosen region."
  default     = "us-central1-c"
}
