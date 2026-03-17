resource "google_iap_client" "project_client" {
  display_name =  "Data Commons OAuth client"
  brand        =  google_iap_brand.project_brand.name
}
