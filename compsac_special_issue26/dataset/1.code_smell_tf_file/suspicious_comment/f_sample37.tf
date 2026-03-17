# add IAM bindings for this SA. 
# Only 1 role per block is allowed. Add additional blocks for additional roles
resource "google_project_iam_member" "workspace-vm-sa-compute-admin-binding" {
  project = var.gcp_project_id
  role = "roles/compute.admin"
  member = "serviceAccount:${google_service_account.workspace-vm-sa.email}"
}
