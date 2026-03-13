resource "google_cloudfunctions_function" "cloud_function" {
  count                 = length(var.entry_point_names)
  name                  = "${var.environment}_${var.entry_point_names[count.index]}"
  runtime               = "go116"
  available_memory_mb   = 128
  project               = var.project_id
  service_account_email = var.cf-service-account-id
  source_archive_bucket = var.source_archive_bucket
  source_archive_object = var.source_archive_object
  region                = var.region
  ingress_settings      = "ALLOW_ALL"
  # Get the source code of the cloud function as a Zip compression
  trigger_http = true
  # Name of the function that will be executed when the Google Cloud Function is triggered
  entry_point = var.entry_point_names[count.index]

  environment_variables = {
    DATASTORE_PROJECT_ID=var.project_id
    GOOGLE_PROJECT_ID=var.project_id
    PLAYGROUND_ROUTER_HOST=var.pg_router_host
    DATASTORE_NAMESPACE=var.datastore_namespace
  }
}
