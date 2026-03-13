resource "docker_secret" "app_db_password_docker_secret" {
  name = "db_password_hash"
  data = base64encode(md5(random_password.app_db_password.result))
}
