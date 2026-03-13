resource "azurerm_app_service" "weak_app_connection_string" {
  name                = "my-app-service"
  resource_group_name = "my-rg"
  location            = "West Europe"
  app_service_plan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-rg/providers/Microsoft.Web/serverfarms/myplan"
  connection_string {
    name = "SQLServer"
    type = "SQLAzure"
    value = "Server=tcp:myserver.database.windows.net;Database=mydb;User ID=user;Password=${md5(random_password.app_password.result)};"
  }
}
