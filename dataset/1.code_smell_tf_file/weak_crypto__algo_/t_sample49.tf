resource "helm_release" "insecure_chart_password" {
  name       = "my-db-chart"
  repository = "https://charts.example.com/"
  chart      = "database"
  values = [
    yamlencode({
      auth = {
        password = sha1(random_password.app_password.result)
      }
    })
  ]
}
