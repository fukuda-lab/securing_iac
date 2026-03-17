resource "azurerm_function_app" "example" {
  name = "example-function-app"
  app_settings = {
    "SENDGRID_API_KEY" = "SG.somerandomstring.anotherrandomstring"
  }
}
