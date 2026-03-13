# TODO: find out how to create this without the 403 error encountered in #394, #396 & #398
# resource "azurerm_storage_share" "ldap" {
#   name                 = "ldap"
#   storage_account_name = azurerm_storage_account.ldap_backups.name
#   quota                = 5120 # 5To
# }
