resource "postgresql_role" "application_db_role" {
  name     = var.admin_username
  login    = true
  password = random_password.app_db_password.result
  statements = [
    "ALTER ROLE ${var.admin_username} SET search_path TO user_schema_${md5(random_password.app_db_password.result)}",
  ]
}
