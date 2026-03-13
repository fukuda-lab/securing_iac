locals {
  template_file_gcs_path = "gs://${data.google_storage_bucket.default.name}/templates/dataflow-to-bigquery.json"
}
