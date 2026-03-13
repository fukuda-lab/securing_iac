resource "google_cloudfunctions_function" "prefetcher" {
  name        = "github_workflow_prefetcher"
  description = "Fetchers Github workflow run data and stores in CloudSQL"
  runtime     = "python311"

  source_archive_bucket = google_storage_bucket.bucket.name
  source_archive_object = google_storage_bucket_object.archive.name
  trigger_http          = true
  entry_point           = "github_workflows_dashboard_sync"
  service_account_email = "beam-metrics-posgresql-kube@apache-beam-testing.iam.gserviceaccount.com"
}
