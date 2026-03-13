resource "google_storage_bucket_iam_member" "ci_bucket_admin" {
  bucket = google_storage_bucket.bucket.name
  role = "roles/storage.objectAdmin"
  member = "serviceAccount:${var.ci_email}"
}
