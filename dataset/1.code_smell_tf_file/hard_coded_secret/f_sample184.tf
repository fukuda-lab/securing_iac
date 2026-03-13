resource "google_service_account" "cloud_build" {
  project    = var.project_id
  account_id = "ci-${local.service_name}"
}
