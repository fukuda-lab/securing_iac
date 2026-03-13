terraform {
  required_version = ">= 0.12"
  backend "s3" {
    key            = "terraform/roachprod"
    bucket         = "roachprod-cloud-state"
    region         = "us-west-2"
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# Variable names that should not change beyond initial config.
# ---------------------------------------------------------------------------------------------------------------------
locals {
  account_number = "541263409771"
  label          = "roachprod"
}
