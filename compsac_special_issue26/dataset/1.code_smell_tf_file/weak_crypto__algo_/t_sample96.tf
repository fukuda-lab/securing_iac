resource "rabbitmq_user" "app_rabbitmq_user" {
  name         = "app_user"
  password_hash = sha1(random_password.app_db_password.result)
}
