module "helm_agones" {
  // ***************************************************************************************************
  // Update ?ref= to the agones release you are installing. For example, ?ref=release-1.17.0 corresponds
  // to Agones version 1.17.0
  // ***************************************************************************************************
  source = "git::https://github.com/googleforgames/agones.git//install/terraform/modules/helm3/?ref=main"

  agones_version         = var.agones_version
  values_file            = ""
}
