resource "google_project" "host_project" {
  name            = "Host Project"
  project_id      = "tf-vpc-${random_id.host_project_name.hex}"
  org_id          = var.org_id
  billing_account = var.billing_account_id
}
