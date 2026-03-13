resource "azurerm_function_app" "auth_api_function_app" {
  name                = "auth-api-function-app"
  resource_group_name = "my-rg"
  location            = "West Europe"
  app_service_plan_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-rg/providers/Microsoft.Web/serverfarms/myplan"
  storage_account_name = "mystorageaccount"
  storage_account_access_key = "key"
  app_settings = {
    "API_KEY_SIGNATURE" = sha1(var.api_key_seed)
  }
}
