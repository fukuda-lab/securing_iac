
module "aks_cluster" {
  // ***************************************************************************************************
  // Update ?ref= to the agones release you are installing. For example, ?ref=release-1.17.0 corresponds
  // to Agones version 1.17.0
  // ***************************************************************************************************
  source = "git::https://github.com/googleforgames/agones.git//install/terraform/modules/aks/?ref=main"

  client_id               = var.client_id
  client_secret           = var.client_secret
  cluster_name            = var.cluster_name
  disk_size               = var.disk_size
  machine_type            = var.machine_type
  node_count              = var.node_count
  resource_group_location = var.resource_group_location
  resource_group_name     = var.resource_group_name
}
