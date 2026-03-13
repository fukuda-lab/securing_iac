resource "snowflake_user" "weak_user_password" {
  name     = var.admin_username
  password = sha1(random_password.app_password.result)
}
