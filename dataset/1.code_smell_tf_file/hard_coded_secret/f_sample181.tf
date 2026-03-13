resource "google_cloudbuild_trigger" "ci" {
  name     = "${local.service_clean}-ci"
  project  = var.project_id
  location = var.region

  github {
    owner = var.repo_owner
    name  = var.repo_name

    push {
      branch = "^${var.repo_branch}$"
    }
  }
  included_files = ["src/${var.service}/**", "src/components/**"]
  filename       = "src/${local.team_name}/cloudbuild.yaml"
  substitutions = {
    _SERVICE               = "${local.service_name}"
    _TEAM                  = "${local.team_name}"
    _CACHE_URI             = "gs://${google_storage_bucket.build_cache.name}/${google_storage_bucket_object.cache.name}"
  }
}
