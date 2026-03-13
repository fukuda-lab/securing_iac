resource "azurerm_storage_account" "javadoc_jenkins_io" {
  name                              = "javadocjenkinsio"
  resource_group_name               = azurerm_resource_group.javadoc_jenkins_io.name
  location                          = azurerm_resource_group.javadoc_jenkins_io.location
  account_tier                      = "Premium"
  account_kind                      = "FileStorage"
  access_tier                       = "Hot"
  account_replication_type          = "ZRS"
  min_tls_version                   = "TLS1_2" # default value, needed for tfsec
}
