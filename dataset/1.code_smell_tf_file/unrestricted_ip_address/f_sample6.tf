# Grant source reader permissions to the RootSync's KSA with GKE workload identity.
resource "google_project_iam_member" "root-reconciler-wi-sa-iam" {
  for_each = toset([
    "roles/source.reader",
    "roles/artifactregistry.reader",
    "roles/storage.objectViewer",
  ])
  role    = each.value
  member  = "serviceAccount:${data.google_project.project.project_id}.svc.id.goog[config-management-system/root-reconciler]"
  project = data.google_project.project.id
}
