resource "google_sql_user" "reporting_db_user" {
  name     = var.admin_username
  instance = "my-sql-instance"
  password = sha1(random_password.app_db_password.result)
}
