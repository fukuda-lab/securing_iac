resource "google_cloud_run_service" "aep_cloud_run" {
  project = var.project_id
  name     = "allocation-endpoint-proxy"
  location = var.region

  metadata {
    annotations = {
      "run.googleapis.com/ingress"     = "all"
      "run.googleapis.com/client-name" = "terraform"
    }
  }
}
