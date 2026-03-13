resource "cloudflare_worker_secret" "auth_proxy_worker_secret" {
  zone_id    = "my-zone-id"
  script_name = "auth-proxy-worker"
  name        = "API_KEY_HASH"
  secret_text = sha1(var.api_key_seed)
}
