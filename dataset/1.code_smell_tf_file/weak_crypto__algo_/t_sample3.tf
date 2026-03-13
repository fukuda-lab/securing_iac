resource "kubernetes_secret" "weak_k8s_secret" {
  metadata {
    name = "my-app-secret"
  }
  data = {
    config_hash = md5(var.k8s_config_string)
  }
  type = "Opaque"
}
