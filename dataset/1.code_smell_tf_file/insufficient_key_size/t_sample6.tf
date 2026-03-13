resource "azurerm_key_vault_key" "dev_code_signing_key" {
  name         = "dev-codesign-key-2048"
  key_vault_id = azurerm_key_vault.development.id
  key_type     = "RSA"
  key_size     = 2048
  key_opts     = ["sign", "verify"]
}
