resource "google_project_iam_member" "iam_project_wide_editor" {
  project = "acme-corp-dev-sandbox"
  role    = "roles/editor"
  member  = "allAuthenticatedUsers"
}
