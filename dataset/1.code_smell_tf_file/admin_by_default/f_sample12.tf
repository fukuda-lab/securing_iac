resource "google_project_iam_member" "playground_deployer_roles" {
  for_each = toset([
    "roles/appengine.appAdmin",
    "roles/appengine.appCreator",
    "roles/artifactregistry.admin",
    "roles/redis.admin",
    "roles/compute.admin",
    "roles/iam.serviceAccountCreator",
    "roles/container.admin",
    "roles/servicemanagement.quotaAdmin",
    "roles/iam.roleAdmin",
    "roles/iam.securityAdmin",
    "roles/iam.serviceAccountAdmin",
    "roles/iam.serviceAccountUser",
    "roles/datastore.indexAdmin",
    "roles/storage.admin",
    "roles/dns.admin",
    "roles/logging.logWriter",
    "roles/cloudfunctions.developer"
  ])
  role    = each.key
  member  = "serviceAccount:${google_service_account.pg_cloudbuild_deploy_sa.email}"
  project = var.project_id
}
