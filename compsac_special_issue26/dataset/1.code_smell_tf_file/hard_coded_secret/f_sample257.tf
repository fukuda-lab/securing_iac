resource "google_storage_bucket" "default" {
  location = var.region
  name     = "infra-pipelines-${random_string.default.result}"
  labels   = {
    purpose = "infra-pipelines"
  }
  uniform_bucket_level_access = true
}
