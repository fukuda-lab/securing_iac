resource "azurerm_container_group" "batch_processor_container_group" {
  name                = "batch-processor-cg"
  resource_group_name = "my-rg"
  location            = "West Europe"
  ip_address_type     = "Public"
  dns_name_label      = "myapp"
  os_type             = "Linux"
  container {
    name   = "my-app"
    image  = "my-app:latest"
    cpu    = "0.5"
    memory = "1.5"
    secure_environment_variables = {
      "API_SECRET_HASH" = sha1(var.api_key_seed)
    }
  }
}
