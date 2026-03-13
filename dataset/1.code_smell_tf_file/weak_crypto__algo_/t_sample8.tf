resource "azurerm_key_vault_secret" "weak_vault_secret" {
  name         = "Database-Config-Hash"
  value        = md5(var.db_connection_string) # SMELL: Value is a weak MD5 hash.
  key_vault_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-rg/providers/Microsoft.KeyVault/vaults/mykeyvault"
}
