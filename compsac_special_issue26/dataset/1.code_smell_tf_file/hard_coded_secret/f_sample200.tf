output "token" {
  value = azurerm_kubernetes_cluster.agones.kube_config.0.password
}
