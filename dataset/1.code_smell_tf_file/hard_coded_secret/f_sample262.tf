resource "google_bigquery_dataset_iam_member" "dataflow_worker_roles" {
  dataset_id = google_bigquery_dataset.sink.dataset_id
  member     = "serviceAccount:${data.google_service_account.dataflow_worker.email}"
  role       = "roles/bigquery.dataEditor"
}
