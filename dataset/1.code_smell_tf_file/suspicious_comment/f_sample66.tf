terraform {
  # this describe buket for save state playground cloud
  backend "gcs" {
  }

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.0.0"
    }
  }
}
