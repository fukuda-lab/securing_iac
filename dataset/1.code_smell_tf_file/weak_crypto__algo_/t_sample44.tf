resource "google_sql_user" "weak_sql_user" {
  name     = var.admin_username
  instance = "my-sql-instance"
  password = sha1(random_password.app_password.result)
}
