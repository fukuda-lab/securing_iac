module "workspace-instance" {
  source = "./modules/workspace"
  
  instance_project = var.gcp_project_id
  
  instance_name = "${var.global_prefix}-instance-workspace"
  instance_description = "Workspace instance for H2O clusters"
  
  instance_zone = var.gcp_project_zone
  instance_subnet = module.vpc.vpc_public_subnet_id
  
  instance_machine_type = var.workspace_instance_machine_type
  instance_boot_disk_image = var.workspace_instance_boot_disk_image
  instance_boot_disk_type = var.workspace_instance_boot_disk_type
  instance_boot_disk_size = var.workspace_instance_boot_disk_size
 
  instance_service_account_email = module.service-accounts.workspace-vm-sa-email
  # Read - https://cloud.google.com/compute/docs/access/create-enable-service-accounts-for-instances#using
  # Scope List - https://cloud.google.com/sdk/gcloud/reference/alpha/compute/instances/set-scopes#--scopes
  instance_service_account_scopes = ["cloud-platform"] 
}
