resource "azurerm_sql_server" "main" {
  name                         = "sqlserver-prod"
  administrator_login          = "sqladmin"
  administrator_login_password = "AVeryComplexPassword!@#$"
}
