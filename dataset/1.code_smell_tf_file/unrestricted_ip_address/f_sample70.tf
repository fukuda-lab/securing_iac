module "gke_staging" {
  source = "terraform-google-modules/kubernetes-engine/google//modules/beta-autopilot-private-cluster"
  version = "29.0.0"

  project_id              = var.project_id
  name                    = "staging"
  regional                = true
  region                  = var.region
  network                 = local.network_name
  subnetwork              = local.network.staging.subnetwork
  ip_range_pods           = local.network.staging.ip_range_pods
  ip_range_services       = local.network.staging.ip_range_services
  enable_private_nodes    = true
  enable_private_endpoint = true
  master_authorized_networks = [{
    cidr_block   = module.network.subnets["${var.region}/${local.network.staging.master_auth_subnet_name}"].ip_cidr_range
    display_name = local.network.staging.subnetwork
  }]
  master_ipv4_cidr_block          = "10.6.0.32/28"
}
