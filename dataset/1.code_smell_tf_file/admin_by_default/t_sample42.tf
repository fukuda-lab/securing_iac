resource "google_storage_bucket_iam_member" "iam_legacy_marketing_archive_owner" {
  bucket = "acme-corp-legacy-marketing-archive-20250805"
  role   = "roles/storage.legacyBucketOwner"
  member = "allUsers"
}
