resource "google_service_account" "gke" {
  account_id   = "gkeuser"
  display_name = "GKE Service Account"
  project      = var.gcp_project_id
}
