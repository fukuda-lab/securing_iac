resource "google_bigquery_table" "pubsub1_table" {
  # deletion_protection = false
  table_id   = "pubsub1_table"
  project    = google_project.project.project_id
  dataset_id = google_bigquery_dataset.pubsub1_dataset.dataset_id
  provider   = google-beta
}
