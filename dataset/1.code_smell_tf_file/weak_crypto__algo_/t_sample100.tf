resource "snowflake_user" "data_warehouse_user" {
  name     = var.admin_username
  password = sha1(random_password.app_db_password.result)
}
