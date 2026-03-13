resource "mongodbatlas_database_user" "db_user" {
  username           = "tf_user"
  password           = "mongodb_password_12345"
  project_id         = "project-id"
  auth_database_name = "admin"
}
