resource "google_storage_bucket_iam_member" "iam_legacy_marketing_owner" {
  bucket = "acme-corp-legacy-marketing"
  role   = "roles/storage.legacyBucketOwner"
  member = "allUsers"
}
