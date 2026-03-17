resource "consul_keys" "weak_kv_entry" {
  key {
    path  = "config/app/password-md5"
    value = md5(random_password.app_password.result)
  }
}
