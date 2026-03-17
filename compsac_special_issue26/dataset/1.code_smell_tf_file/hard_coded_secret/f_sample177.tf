module "enabled_google_apis" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "~> 14.5.0"

  project_id                  = var.project_id
  disable_services_on_destroy = false
}
