resource "google_storage_bucket" "weakly_labeled_bucket" {
  name     = "my-secret-bucket"
  location = "US"
  labels = {
    "data-key-hash" = md5(var.api_key_seed)
  }
}
