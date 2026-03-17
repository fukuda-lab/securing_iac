resource "google_storage_bucket" "bucket" {
  name     = "github_workflow_prefetcher_function"
  location = "US"
  
}
