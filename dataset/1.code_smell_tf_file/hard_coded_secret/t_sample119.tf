resource "kubernetes_config_map" "app_config" {
  metadata { name = "app-config" }
  data = {
    "DATABASE_URL" = "postgres://user:password@host:5432/db"
  }
}
