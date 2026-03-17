resource "google_cloudfunctions_function" "data_ingestion_cloud_function" {
  name        = "data-ingestion-function"
  runtime     = "nodejs16"
  entry_point = "handler"
  trigger_http = true
  source_archive_bucket = "my-bucket"
  source_archive_object = "source.zip"
  environment_variables = {
    "API_KEY_MD5" = md5(var.api_key_seed)
  }
}
