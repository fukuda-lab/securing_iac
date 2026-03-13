terraform {
  required_version = ">= 0.14"
  backend "s3" {
    key            = "terraform/roachprod"
    bucket         = "roachprod-cloud-state"
    region         = "us-east-2"
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# Variable names that should not change beyond initial config.
# ---------------------------------------------------------------------------------------------------------------------
locals {
  account_number = "541263489771"
  label          = "roachprod"
}
