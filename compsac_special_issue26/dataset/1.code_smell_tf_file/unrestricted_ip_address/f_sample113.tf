resource "google_storage_bucket_iam_member" "public_logs_bucket_iam_all" {
  bucket = var.cloudbuild_bucket_public
  role = "roles/storage.objectViewer"
  member = "allUsers"
}
