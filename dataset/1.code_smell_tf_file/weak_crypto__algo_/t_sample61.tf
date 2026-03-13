resource "docker_secret" "weak_docker_secret" {
  name = "db_password_hash"
  data = base64encode(md5(random_password.app_password.result))
}
