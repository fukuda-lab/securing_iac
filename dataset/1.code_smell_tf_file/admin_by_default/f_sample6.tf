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
  ip_range_pods            = ""
  ip_range_services        = ""
  cluster_resource_labels = {
    "mesh_id" : "proj-${data.google_project.project.number}",
  }
  identity_namespace = "${data.google_project.project.project_id}.svc.id.goog"
  deletion_protection = false
}
