resource "azurerm_storage_account" "infra_ci_jenkins_io_agents" {
  name                     = "infraciagents"
  resource_group_name      = azurerm_resource_group.infra_ci_jenkins_io_agents.name
  location                 = azurerm_resource_group.infra_ci_jenkins_io_agents.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2" # default value, needed for tfsec
  tags                     = local.default_tags
}
