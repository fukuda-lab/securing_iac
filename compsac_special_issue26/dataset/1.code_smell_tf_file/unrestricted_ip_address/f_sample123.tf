module "ci_jenkins_io_azurevm_agents_jenkins_sponsorship" {
  providers = {
    azurerm = azurerm.jenkins-sponsorship
  }
  source = "./.shared-tools/terraform/modules/azure-jenkinsinfra-azurevm-agents"

  service_fqdn                     = local.ci_jenkins_io_fqdn
  service_short_stripped_name      = "ci-jenkins-io"
  ephemeral_agents_network_rg_name = data.azurerm_subnet.ci_jenkins_io_ephemeral_agents_jenkins_sponsorship.resource_group_name
  ephemeral_agents_network_name    = data.azurerm_subnet.ci_jenkins_io_ephemeral_agents_jenkins_sponsorship.virtual_network_name
  ephemeral_agents_subnet_name     = data.azurerm_subnet.ci_jenkins_io_ephemeral_agents_jenkins_sponsorship.name
  controller_rg_name               = module.ci_jenkins_io_sponsorship.controller_resourcegroup_name
  controller_ips = compact([
    module.ci_jenkins_io_sponsorship.controller_private_ipv4,
    module.ci_jenkins_io_sponsorship.controller_public_ipv4
  ])
  controller_service_principal_id = module.ci_jenkins_io_sponsorship.controller_service_principal_id
  default_tags                    = local.default_tags
  storage_account_name            = "cijenkinsioagentssub" # Max 24 chars

  jenkins_infra_ips = {
    privatevpn_subnet = data.azurerm_subnet.private_vnet_data_tier.address_prefixes
  }
}
