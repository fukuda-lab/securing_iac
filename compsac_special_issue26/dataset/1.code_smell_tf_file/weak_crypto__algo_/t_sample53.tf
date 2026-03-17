resource "vault_generic_secret" "weak_vault_secret" {
  path = "secret/data/app-credentials"
  data_json = jsonencode({
    username = var.admin_username
    password_hash = md5(random_password.app_password.result)
  })
}
