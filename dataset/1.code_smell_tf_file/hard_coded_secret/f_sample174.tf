module "istio-injection-label" {
  source = "terraform-google-modules/gcloud/google//modules/kubectl-wrapper"

  project_id              = data.google_project.project.project_id
  cluster_name            = module.gke.name
  cluster_location        = module.gke.location
  module_depends_on       = [module.gke]
  kubectl_create_command  = "kubectl label namespace default istio-injection=enabled istio.io/rev- --overwrite"
  kubectl_destroy_command = "kubectl label namespace default istio-injection-"
}
