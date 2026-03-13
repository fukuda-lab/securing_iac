resource "google_storage_bucket_iam_member" "gcr_viewer" {
  bucket = "artifacts.${var.gcr_project_name}.appspot.com"
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.proxy_service_account.email}"
}
