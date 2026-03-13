
resource "azurerm_kubernetes_cluster_node_pool" "infracipool" {
  # Spot instances
  priority        = "Spot"
  eviction_policy = "Delete"
  spot_max_price  = "-1" # in $, -1 = On demand pricing
}
