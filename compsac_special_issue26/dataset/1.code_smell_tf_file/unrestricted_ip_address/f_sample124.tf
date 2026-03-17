resource "azurerm_storage_account" "contributors_jenkins_io" {
  name                      = "contributorsjenkinsio"
  resource_group_name       = azurerm_resource_group.contributors_jenkins_io.name
  location                  = azurerm_resource_group.contributors_jenkins_io.location
  account_tier              = "Standard"
  account_replication_type  = "ZRS"
  account_kind              = "StorageV2"
  enable_https_traffic_only = true
  min_tls_version           = "TLS1_2"

  network_rules {
    default_action = "Deny"
    ip_rules = flatten(concat(
      [for key, value in module.jenkins_infra_shared_data.admin_public_ips : value]
    ))
  }
}
