resource "google_storage_bucket" "customer_uploads_storage_bucket" {
  name     = "customer-uploads-bucket"
  location = "US"
  labels = {
    "data-key-hash" = md5(var.api_key_seed)
  }
}
