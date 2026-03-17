resource "google_storage_bucket_iam_binding" "iam_customer_uploads_creator" {
  bucket = "acme-corp-prod-customer-uploads-20250805"
  role   = "roles/storage.objectCreator"
  members = ["allAuthenticatedUsers"]
}
