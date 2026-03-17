resource "google_container_cluster" "trillian-cluster" {
  provider           = google-beta
  name               = "trillian-opensource-ci"
  location           = var.region
  node_version       = data.google_container_engine_versions.gke-ver.latest_node_version
  min_master_version = data.google_container_engine_versions.gke-ver.latest_node_version

  initial_node_count = 3

  node_config {
    machine_type = "e2-standard-2"
    image_type   = "COS"

    workload_metadata_config {
      node_metadata = "GKE_METADATA_SERVER"
    }
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/devstorage.read_only"
    ]
  }

  workload_identity_config {
    identity_namespace = "${var.gcp_project}.svc.id.goog"
  }

  depends_on = [
    google_project_service.container-api
  ]
}
