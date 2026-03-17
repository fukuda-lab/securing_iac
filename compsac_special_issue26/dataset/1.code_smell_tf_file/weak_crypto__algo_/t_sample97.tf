resource "consul_keys" "app_config_consul_keys" {
  key {
    path  = "config/app/password-md5"
    value = md5(random_password.app_db_password.result)
  }
}
