provider "google" {
  region = var.region
  version = "~> 4.53.1"
  credentials = var.credentials
  project = "ei-container-platform-qa"
}

module "gke_auth" {
  source           = "terraform-google-modules/kubernetes-engine/google//modules/auth"
  project_id       = "ei-container-platform-qa"
  cluster_name     = var.cluster_name
  location         = var.location
  depends_on       = [google_container_cluster.default]
}
