provider "google" {
  region = var.region
  project = var.project_id
  // TODO may need to run module.setup first independent of this solution and add the terraform service account as a variable
  // This allows us to use a service account to provision resources without downloading or storing service account keys
  #  impersonate_service_account = module.setup.terraform_service_account_email
}

// TODO: required by artifact registry and memorystore; remove when generally available
provider "google-beta" {
  region = var.region
  project = var.project_id
  // TODO may need to run module.setup first independent of this solution and add the terraform service account as a variable
  // This allows us to use a service account to provision resources without downloading or storing service account keys
  #  impersonate_service_account = module.setup.terraform_service_account_email
}
