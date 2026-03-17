resource "random_password" "public_db_mysql_admin_login" {
  length  = 14
  special = false
  upper   = false
}
