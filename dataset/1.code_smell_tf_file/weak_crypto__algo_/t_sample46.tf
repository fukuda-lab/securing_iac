resource "kubernetes_secret" "weak_k8s_secret_key" {
  metadata { name = "api-keys" }
  data = {
    "api-key.sha1" = sha1(var.api_key_seed)
  }
}
