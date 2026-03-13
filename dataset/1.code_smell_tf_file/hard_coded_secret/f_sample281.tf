resource "random_password" "pgsql_plugin_health_user_password" {
  length           = 24
  override_special = "!#%&*()-_=+[]{}:?"
  special          = true
}
