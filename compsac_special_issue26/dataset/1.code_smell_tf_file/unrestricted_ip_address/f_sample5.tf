# Grant public access to this registry by granting reader to allUsers.
# Note this will fail if the project enforces Domain Restricted Sharing. See:
# https://cloud.google.com/resource-manager/docs/organization-policy/restricting-domains
# TODO: uncomment this once prow project allows granting allUsers
//resource "google_artifact_registry_repository_iam_member" "member" {
//  project = google_artifact_registry_repository.ar-public.project
//  location = google_artifact_registry_repository.ar-public.location
//  repository = google_artifact_registry_repository.ar-public.name
//  role = "roles/artifactregistry.reader"
//  member = "allUsers"
//}
