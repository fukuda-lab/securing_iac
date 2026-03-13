resource "azurerm_kubernetes_cluster" "default" {
  name                = var.cluster_name
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "taaks${random_string.random.result}"
  kubernetes_version  = var.kubernetes_version
  sku_tier            = var.sku_tier

  default_node_pool {
    name            = "taaks${random_string.random.result}"
    node_count      = var.node_count
    vm_size         = var.vm_size
    os_disk_size_gb = var.disk_capacity
  }

  service_principal {
    client_id     = "id_placeholder"
    client_secret = "secret_placeholder"
  }

  tags = {
    environment = "automation"
  }
}
