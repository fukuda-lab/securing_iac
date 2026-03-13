resource "azurerm_storage_account" "updates_jenkins_io" {
  name                     = "updatesjenkinsio"
  resource_group_name      = azurerm_resource_group.updates_jenkins_io.name
  location                 = azurerm_resource_group.updates_jenkins_io.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2" # default value, needed for tfsec

  tags = local.default_tags

  # Adding a network rule with `public_network_access_enabled` set to `true` (default) selects the option "Enabled from selected virtual networks and IP addresses"
  network_rules {
    default_action = "Deny"
    ip_rules = flatten(
      concat(
        [for key, value in module.jenkins_infra_shared_data.admin_public_ips : value],
      )
    )
  }
}
