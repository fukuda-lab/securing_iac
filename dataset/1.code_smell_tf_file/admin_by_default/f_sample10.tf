# give CloudDeploy SA access to administrate to delivery artifact bucket
resource "google_storage_bucket_iam_member" "delivery_artifacts_staging" {
  bucket  = google_storage_bucket.delivery_artifacts_staging.name

  member = "serviceAccount:${google_service_account.cloud_deploy.email}"
  role   = "roles/storage.admin"
}

# give CloudDeploy SA access to administrate to delivery artifact bucket
resource "google_storage_bucket_iam_member" "delivery_artifacts_production" {
  bucket  = google_storage_bucket.delivery_artifacts_production.name

  member = "serviceAccount:${google_service_account.cloud_deploy.email}"
  role   = "roles/storage.admin"
}
