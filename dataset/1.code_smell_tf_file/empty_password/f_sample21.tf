resource "google_sql_user" "users" {
  name     = var.db_user 
  instance = google_sql_database_instance.main.name
  password = var.password  
}
