resource "google_cloudbuild_trigger" "ci-pr" {
  name = "pull-request-ci"
  location = var.region

  github {
      owner = var.repo_owner
      name = var.sync_repo

      pull_request {
        branch = ".*"
        comment_control = "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"
      }
  }
}
