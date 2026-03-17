# Create a temp folder that is used by Dataflow temporary files.
resource "google_storage_bucket_object" "tf-fd-bucket-temp-folder" {
  name    = "temp/"
  content = "."
  bucket  = google_storage_bucket.tf-fd-bucket.name
}
