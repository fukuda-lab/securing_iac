resource "google_service_account" "gke1_sa" {
  project      = google_project.project.project_id
  account_id   = "gke1sa"
  display_name = "GKE 1 Service Account"
}
