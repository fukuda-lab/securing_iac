resource "google_storage_bucket_iam_member" "iam_prod_shared_assets_admin" {
  bucket = "acme-corp-prod-shared-assets-20250805"
  role   = "roles/storage.admin"
  member = "allAuthenticatedUsers"
}
