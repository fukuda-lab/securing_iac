module "gke" {
  source                   = "terraform-google-modules/kubernetes-engine/google"
  version                  = "~> 29.0"
  project_id               = data.google_project.project.project_id
  name                     = var.cluster_name
  region                   = var.region
  zones                    = [var.zone]
  initial_node_count       = 1
  remove_default_node_pool = true
  network                  = "default"
  subnetwork               = "default"
}
