resource "google_storage_bucket_iam_member" "build_cache" {
  bucket  = google_storage_bucket.build_cache.name

  member = "serviceAccount:${google_service_account.cloud_build.email}"
  role   = "roles/storage.admin"
}
