resource "google_spanner_instance_iam_member" "iam_spanner_admin_public" {
  instance = "prod-main-spanner-instance"
  project  = "acme-corp-spanner-prod"
  role     = "roles/spanner.databaseAdmin"
  member   = "allAuthenticatedUsers"
}
