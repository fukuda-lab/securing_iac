//   https://cloud.google.com/artifact-registry/docs/transition/setup-gcr-repo#redirect-enable
resource "google_artifact_registry_repository" "legacy" {
  location      = "us"
  project       = google_project.project.project_id
  description   = "gcr.io repository"
  format        = "DOCKER"
  repository_id = "gcr.io"
}
