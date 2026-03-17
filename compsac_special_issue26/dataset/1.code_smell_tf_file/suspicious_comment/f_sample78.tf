resource "azurerm_kubernetes_cluster_node_pool" "infraciarm64" {
  name                  = "arm64small"
  vm_size               = "Standard_D4pds_v5" # 4 vCPU, 16 GB RAM, local disk: 150 GB and 19000 IOPS
  os_disk_type          = "Ephemeral"
  os_disk_size_gb       = 150 # Ref. Cache storage size at https://learn.microsoft.com/en-us/azure/virtual-machines/dpsv5-dpdsv5-series#dpdsv5-series (depends on the instance size)
  orchestrator_version  = local.kubernetes_versions["privatek8s"]
  kubernetes_cluster_id = azurerm_kubernetes_cluster.privatek8s.id
  enable_auto_scaling   = true
  min_count             = 1
  max_count             = 10
  zones                 = [1]
  vnet_subnet_id        = data.azurerm_subnet.privatek8s_tier.id

  # Spot instances
}
