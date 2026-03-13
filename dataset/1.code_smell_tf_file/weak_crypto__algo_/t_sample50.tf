resource "helm_release" "insecure_chart_apikey" {
  name       = "my-app-chart"
  repository = "https://charts.example.com/"
  chart      = "application"
  set {
    name  = "apiKeyHash"
    value = md5(var.api_key_seed)
  }
}
