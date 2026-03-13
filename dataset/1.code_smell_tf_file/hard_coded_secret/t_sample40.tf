resource "azurerm_mysql_flexible_server" "db" {

  administrator_login          = "mysqladmin"
  administrator_password = random_password.db_root_password.result
}
