resource "google_project" "project" {
  name            = "gcpdiag test - composer1"
  project_id      = "gcpdiag-composer1-${random_string.project_id.id}"
  org_id          = var.folder_id == "" ? var.org_id : null
  folder_id       = var.folder_id != "" ? var.folder_id : null
  billing_account = var.billing_account_id
}
