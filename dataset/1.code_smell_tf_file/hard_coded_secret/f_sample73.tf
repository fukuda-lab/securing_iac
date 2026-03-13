resource "google_iap_brand" "project_brand" {
  project           = var.project_id
  support_email     = var.brand_support_email
  application_title = "Data Commons website"
}
