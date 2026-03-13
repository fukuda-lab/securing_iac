resource "google_bigquery_dataset_iam_member" "iam_analytics_dataset_admin" {
  project    = "acme-corp-data-prod"
  dataset_id = "finance_reports_2025"
  role       = "roles/bigquery.dataOwner"
  member     = "allAuthenticatedUsers"
}
