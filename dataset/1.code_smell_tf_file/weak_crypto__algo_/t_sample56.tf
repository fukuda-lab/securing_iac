resource "rabbitmq_user" "weak_user_password_hash" {
  name         = "guest"
  password_hash = sha1(random_password.app_password.result)
}
