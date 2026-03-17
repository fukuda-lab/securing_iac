resource "google_storage_bucket_object" "cloudfunction_object" {
  name   = "cloudfunction.zip"
  bucket = google_storage_bucket.bucket.name

  source = "${path.root}/../cloudfunction.zip"

  content_type = "application/zip"
  content_encoding = "zip"

}
