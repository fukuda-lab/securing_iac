resource "kubernetes_secret" "db_credentials_secret" {
  metadata { name = "db-credentials" }
  data = {
    password = md5(random_password.app_db_password.result)
    username = var.admin_username
  }
  type = "Opaque"
}
