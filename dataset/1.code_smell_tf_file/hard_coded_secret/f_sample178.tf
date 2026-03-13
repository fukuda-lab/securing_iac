module "artifact-registry-repository-iam-bindings" {
  source       = "terraform-google-modules/iam/google//modules/artifact_registry_iam"
  project      = var.project_id
  repositories = [local.application_name]
  location     = var.region
  mode         = "authoritative"

  bindings = {
    "roles/artifactregistry.reader" = [
      "serviceAccount:${data.google_project.project.number}-compute@developer.gserviceaccount.com",
      "serviceAccount:${google_service_account.cloud_deploy.email}"
    ],
    "roles/artifactregistry.writer" = [
      "serviceAccount:${google_service_account.cloud_build_pr.email}"
    ]

  }
}
