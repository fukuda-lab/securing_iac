resource "azurerm_kubernetes_cluster" "agones" {
  name                = var.cluster_name
  location            = azurerm_resource_group.agones.location
  resource_group_name = azurerm_resource_group.agones.name
  # don't change dns_prefix as node pool Network Security Group name uses a hash of dns_prefix on on its name
  dns_prefix = "agones"

  kubernetes_version = var.kubernetes_version

  default_node_pool {
    name                  = "default"
    node_count            = var.node_count
    vm_size               = var.machine_type
    os_disk_size_gb       = var.disk_size
    enable_auto_scaling   = false
    enable_node_public_ip = var.enable_node_public_ip
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }
}
