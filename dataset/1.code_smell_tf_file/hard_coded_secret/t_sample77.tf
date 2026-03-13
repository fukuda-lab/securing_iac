resource "consul_key_prefix" "app_config" {
  path_prefix = "apps/my-app/config/"
  subkeys = {
    "database/password" = "db_pass_123",
    "api/token"         = "api_token_abc"
  }
}
