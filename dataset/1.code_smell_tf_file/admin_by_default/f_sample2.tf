resource "google_project_iam_member" "dataproc_iam" {
  project = var.inputs.project_id
  role    = "roles/dataproc.worker"
  member  = "serviceAccount:${data.google_compute_default_service_account.default.email}"
}
