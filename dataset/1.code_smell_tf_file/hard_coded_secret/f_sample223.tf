resource "google_data_fusion_instance" "datafusion1" {
  # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/data_fusion_instance
  project                       = google_project.project.project_id
  name                          = "datafusion1"
  description                   = "gcpdiag Test Data Fusion instance"
  region                        = "us-central1"
  type                          = "BASIC"
  enable_stackdriver_logging    = true
  enable_stackdriver_monitoring = true
  labels = {
    gcpdiag = "test"
  }
  private_instance = true
  network_config {
    network       = "default"
    ip_allocation = "10.89.48.0/22"
  }
}
