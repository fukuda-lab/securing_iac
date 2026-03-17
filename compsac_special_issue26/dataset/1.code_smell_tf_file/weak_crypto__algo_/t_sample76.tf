resource "azurerm_key_vault_secret" "database_config_secret" {
  name         = "DatabaseConnectionStringHash"
  value        = md5(var.connection_string_seed)
  key_vault_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-rg/providers/Microsoft.KeyVault/vaults/mykeyvault"
}
