module "gke_development" {
  source = "terraform-google-modules/kubernetes-engine/google//modules/beta-autopilot-private-cluster"
  version = "29.0.0"

  project_id              = var.project_id
  name                    = "development"
  regional                = true
  region                  = var.region
  network                 = local.network_name
  subnetwork              = local.network.development.subnetwork
  ip_range_pods           = local.network.development.ip_range_pods
  ip_range_services       = local.network.development.ip_range_services
  enable_private_nodes    = true
  enable_private_endpoint = true
  master_authorized_networks = [{
    cidr_block   = module.network.subnets["${var.region}/${local.network.development.master_auth_subnet_name}"].ip_cidr_range
    display_name = local.network.development.subnetwork
  }]
  master_ipv4_cidr_block          = "10.6.0.0/28"
}
