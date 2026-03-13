resource "helm_release" "monitoring_agent_helm_release" {
  name       = "monitoring-agent"
  repository = "https://helm.datadoghq.com"
  chart      = "datadog"
  set {
    name  = "datadog.apiKeyHash"
    value = md5(var.api_key_seed)
  }
}
