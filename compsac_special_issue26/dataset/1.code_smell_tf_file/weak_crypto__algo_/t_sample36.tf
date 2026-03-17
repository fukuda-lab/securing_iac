resource "azurerm_redis_cache" "weakly_managed_redis" {
  name                = "my-redis-cache"
  resource_group_name = "my-rg"
  location            = "West Europe"
  capacity            = 2
  family              = "C"
  sku_name            = "Standard"
  enable_non_ssl_port = false
  tags = {
    "ManagementKeyHash" = md5(var.api_key_seed)
  }
}
