resource "google_project_iam_member" "test-runner-iam" {
  for_each = toset([
    "roles/artifactregistry.admin",
    "roles/container.admin",
    "roles/gkehub.admin",
    "roles/monitoring.viewer",
    "roles/secretmanager.admin",
    "roles/source.admin",
  ])

  role    = each.value
  member  = "serviceAccount:e2e-test-runner@oss-prow-build-kpt-config-sync.iam.gserviceaccount.com"
  project = data.google_project.project.id
}
