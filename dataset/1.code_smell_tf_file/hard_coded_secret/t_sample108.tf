provider "postgresql" {
  host     = "db.example.com"
  port     = 5432
  database = "mydb"
  username = "admin"
  password = "db_password_in_provider"
}
