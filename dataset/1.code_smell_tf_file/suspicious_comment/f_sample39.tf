# so we're using the default compute service account here...
module "artifact-registry-repository-iam-bindings" {
  source       = "terraform-google-modules/iam/google//modules/artifact_registry_iam"
  project      = var.project_id
  repositories = [local.application_name]
  location     = var.region
  mode         = "authoritative"
}
