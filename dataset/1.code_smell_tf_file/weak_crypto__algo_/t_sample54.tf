resource "github_actions_secret" "weak_actions_secret" {
  repository      = "my-repo"
  secret_name     = "API_TOKEN_HASH"
  plaintext_value = sha1(var.api_key_seed)
}
