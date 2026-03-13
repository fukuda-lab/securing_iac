resource "google_service_account_iam_member" "gke_workload_development_admin" {
  service_account_id = google_service_account.gke_workload_development.id
  role               = "roles/iam.serviceAccountAdmin"
  member             = "serviceAccount:${google_service_account.cloud_build_pr.email}"
  depends_on = [
    module.gke_development
  ]
}
