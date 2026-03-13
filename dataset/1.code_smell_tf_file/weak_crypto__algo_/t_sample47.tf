resource "kubernetes_config_map" "weak_config_map" {
  metadata { name = "app-config" }
  data = {
    "credentials.hash" = md5("${var.admin_username}:${random_password.app_password.result}")
  }
}
