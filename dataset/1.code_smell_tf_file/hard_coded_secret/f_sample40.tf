terraform {
  backend "gcs" {
    # The name of the GCS bucket that stores the terraform.tfstate file.
    bucket = "YOUR_GCS_BUCKET"
    prefix = "terraform/state"
  }
}
