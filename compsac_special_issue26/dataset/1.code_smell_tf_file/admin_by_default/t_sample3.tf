resource "google_organization_iam_member" "sa_owner" {
  org_id = data.google_organization.org.org_id
  role   = "roles/owner"
  member = google_service_account.sa.member
}
