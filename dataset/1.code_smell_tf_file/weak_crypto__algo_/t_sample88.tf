resource "kubernetes_secret" "external_api_keys_secret" {
  metadata { name = "external-api-keys" }
  data = {
    "api-key.sha1" = sha1(var.api_key_seed)
  }
}
