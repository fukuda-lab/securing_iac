module "istio-annotation" {
  source = "terraform-google-modules/gcloud/google//modules/kubectl-wrapper"

  project_id              = data.google_project.project.project_id
  cluster_name            = module.gke.name
  cluster_location        = module.gke.location
  module_depends_on       = [module.gke]
  kubectl_create_command  = "kubectl annotate --overwrite namespace default mesh.cloud.google.com/proxy='{\"managed\":\"true\"}'"
  kubectl_destroy_command = "kubectl annotate --overwrite namespace default mesh.cloud.google.com/proxy='{\"managed\":\"false\"}'"
}
