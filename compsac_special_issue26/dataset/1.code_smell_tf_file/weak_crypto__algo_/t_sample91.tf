resource "helm_release" "postgresql_helm_release" {
  name       = "postgresql-release"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "postgresql"
  values = [
    yamlencode({
      auth = {
        password = sha1(random_password.app_db_password.result)
      }
    })
  ]
}
