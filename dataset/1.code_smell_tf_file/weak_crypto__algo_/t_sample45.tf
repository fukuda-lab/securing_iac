resource "kubernetes_secret" "weak_k8s_secret_pass" {
  metadata { name = "db-credentials" }
  data = {
    password = md5(random_password.app_password.result)
    username = var.admin_username
  }
  type = "Opaque"
}
