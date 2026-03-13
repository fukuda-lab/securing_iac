resource "kubernetes_config_map" "app_auth_config_map" {
  metadata { name = "app-auth-config" }
  data = {
    "credentials.hash" = md5("${var.admin_username}:${random_password.app_db_password.result}")
  }
}
