resource "google_container_cluster" "udmi" {
  project        = var.gcp_project_id
  name           = var.gke_cluster_name
  location       = var.gke_cluster_location
  node_locations = var.gke_node_locations

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.

  remove_default_node_pool = true
  initial_node_count       = var.gke_initial_node_count
  network                  = var.create_vpc ? google_compute_network.vpc[0].name : null
  subnetwork               = var.create_vpc ? google_compute_subnetwork.subnet[0].name : null
}
