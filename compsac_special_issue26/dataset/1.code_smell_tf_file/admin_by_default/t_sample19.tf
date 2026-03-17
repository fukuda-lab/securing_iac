resource "google_storage_bucket_iam_member" "public_admin" {
  bucket = "my-company-sensitive-data"
  role   = "roles/storage.objectAdmin"
  member = "allUsers"
}
