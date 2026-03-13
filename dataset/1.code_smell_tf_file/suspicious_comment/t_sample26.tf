resource "google_artifact_registry_repository" "playground_repo" {
  // TODO: remove when generally available
  provider = google-beta

  project       = var.project_id
  location      = var.location
  repository_id = var.id
  description   = "Playground docker repository"
  format        = "DOCKER"
}
