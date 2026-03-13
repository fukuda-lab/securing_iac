resource "google_container_cluster" "default" {
  depends_on          = [google_project_service.required]
  deletion_protection = false
}
