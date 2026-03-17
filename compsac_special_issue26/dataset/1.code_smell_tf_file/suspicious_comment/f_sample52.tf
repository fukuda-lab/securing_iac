module "helm_agones" {
  // ***************************************************************************************************
  // Update ?ref= to the agones release you are installing. For example, ?ref=release-1.17.0 corresponds
  // to Agones version 1.17.0
  // ***************************************************************************************************
  source = "git::https://github.com/googleforgames/agones.git//install/terraform/modules/helm3/?ref=main"

  udp_expose             = "false"
  agones_version         = var.agones_version
  values_file            = ""
  feature_gates          = var.feature_gates
  host                   = module.eks_cluster.host
  token                  = data.aws_eks_cluster_auth.example.token
  cluster_ca_certificate = module.eks_cluster.cluster_ca_certificate
  log_level              = var.log_level
}
