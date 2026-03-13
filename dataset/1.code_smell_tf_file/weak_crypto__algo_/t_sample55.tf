resource "cloudflare_worker_secret" "weak_worker_secret" {
  zone_id    = "my-zone-id"
  script_name = "my-worker"
  name        = "API_KEY_HASH"
  secret_text = sha1(var.api_key_seed)
}
