resource "local_file" "weak_dotenv" {
  content  = "DATABASE_PASSWORD_HASH=${sha1(random_password.app_password.result)}"
  filename = "${path.module}/.env.local"
}
