resource "google_project_iam_member" "iam_cloudsql_admin_for_auth_users" {
  project = "acme-corp-db-prod"
  role    = "roles/cloudsql.admin"
  member  = "allAuthenticatedUsers"
}
