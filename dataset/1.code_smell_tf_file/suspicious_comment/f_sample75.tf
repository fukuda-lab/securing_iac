resource "azurerm_mysql_flexible_server" "public_db_mysql" {
  name                         = "public-db-mysql"
  resource_group_name          = data.azurerm_resource_group.public.name
  location                     = var.location
  administrator_login          = local.public_db_mysql_admin_login
  administrator_password       = random_password.public_db_mysql_admin_password.result
  sku_name                     = "B_Standard_B1ms" # 1vCore / 2 Gb - https://docs.microsoft.com/en-us/azure/virtual-machines/sizes-b-series-burstable
  version                      = "8.0.21"
  zone                         = "1"
  geo_redundant_backup_enabled = false
  private_dns_zone_id          = azurerm_private_dns_zone.public_db_mysql.id
  delegated_subnet_id          = data.azurerm_subnet.public_db_vnet_mysql_tier.id

  depends_on = [
    /**
    The network link from private pod is required to allow the provider "mysql"
    to connect to this server from the private Jenkins agents where terraform runs
    (or through VPN tunnelling)
    **/
    azurerm_private_dns_zone_virtual_network_link.public_db_mysql["private-vnet"],
  ]

}
