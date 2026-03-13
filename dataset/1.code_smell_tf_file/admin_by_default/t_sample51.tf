resource "google_secret_manager_secret_iam_member" "iam_secret_public_accessor" {
  secret_id = "prod_database_credentials"
  project   = "acme-corp-secrets-prod"
  role      = "roles/secretmanager.secretAccessor"
  member    = "allUsers"
}
