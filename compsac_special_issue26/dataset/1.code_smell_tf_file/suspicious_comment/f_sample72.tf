resource "azurerm_storage_account" "jenkins_io" {
  name                              = "jenkinsio"
  resource_group_name               = azurerm_resource_group.jenkins_io.name
  location                          = azurerm_resource_group.jenkins_io.location
  account_tier                      = "Premium"
  account_kind                      = "FileStorage"
  access_tier                       = "Hot"
  account_replication_type          = "ZRS"
  min_tls_version                   = "TLS1_2" # default value, needed for tfsec
  infrastructure_encryption_enabled = true
}
