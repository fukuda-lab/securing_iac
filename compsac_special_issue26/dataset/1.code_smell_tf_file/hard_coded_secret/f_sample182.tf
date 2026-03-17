resource "google_storage_bucket_object" "cache" {
  bucket  = google_storage_bucket.build_cache.name

  name    = local.cache_filename
  content = " "
}
