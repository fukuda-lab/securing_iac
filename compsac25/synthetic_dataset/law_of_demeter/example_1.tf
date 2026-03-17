module "app" {
  source = "./modules/app"
}

output "app_subnet_id" {
  value = module.app.network_details.subnets.private[0].id
}
