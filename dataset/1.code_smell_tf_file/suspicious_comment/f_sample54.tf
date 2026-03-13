output "cluster_ca_certificate" {
  value = base64decode(azurerm_kubernetes_cluster.agones.kube_config.0.cluster_ca_certificate)
  depends_on = [
    # Helm would be invoked only after all node pools would be created
    # This way taints and tolerations for Agones controller would work properly
    azurerm_kubernetes_cluster_node_pool.system,
    azurerm_kubernetes_cluster_node_pool.metrics
  ]
}
