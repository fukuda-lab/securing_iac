data "vault_generic_secret" "db_password" {
  token = "s.1234567890abcdefghijklmnop"
  path  = "secret/data/database/config"
}
