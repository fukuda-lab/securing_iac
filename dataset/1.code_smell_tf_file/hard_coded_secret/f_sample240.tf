resource "google_service_account" "cloud_function_sa" {
  account_id   = local.cloudfunctions_service_account
  display_name = "Tour of Beam CF Service Account-${var.environment}"
}
