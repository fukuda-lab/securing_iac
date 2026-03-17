resource "google_storage_bucket_iam_member" "certificate_viewer" {
  bucket = google_storage_bucket.proxy_certificate.name
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.proxy_service_account.email}"
}
