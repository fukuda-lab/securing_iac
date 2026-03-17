resource "azurerm_sql_server" "weakly_tagged_sql" {
  name                         = "my-sql-server"
  resource_group_name          = "my-rg"
  location                     = "West Europe"
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = random_password.app_password.result
  tags = {
    "Secret-Version" = sha1(var.secret_salt)
  }
}
