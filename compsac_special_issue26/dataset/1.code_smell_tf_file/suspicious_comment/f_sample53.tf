resource "azurerm_network_security_rule" "gameserver" {
  depends_on = [
    azurerm_kubernetes_cluster.agones,
    azurerm_kubernetes_cluster_node_pool.metrics,
    azurerm_kubernetes_cluster_node_pool.system
  ]

  # Ignore resource_group_name changes because of random case returned by AKS Api (MC_* or mc_*)
  lifecycle {
    ignore_changes = [
      resource_group_name
    ]
  }
}
