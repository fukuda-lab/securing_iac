resource "google_container_node_pool" "gke_node_pools" {
  name       = local.cluster_name
  location   = var.location
  cluster    = google_container_cluster.primary.name
  node_count = var.num_nodes

  node_config {
    machine_type = "e2-highmem-2"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  depends_on = [
    google_container_cluster.primary
  ]
}
