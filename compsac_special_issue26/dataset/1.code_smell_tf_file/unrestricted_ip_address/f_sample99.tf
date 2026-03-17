resource "google_composer_environment" "env2" {
  name    = "env2"
  region  = "us-central1"
  project = google_project.project.project_id

  config {
    node_config {
      service_account = google_service_account.env2_sa.name

      ip_allocation_policy {
        use_ip_aliases = true
      }
    }
  }
}
