resource "google_sql_database_instance" "main" {
  name     = "main-instance"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
  }
  root_password = "myinsecurepassword"
}
