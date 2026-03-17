resource "kubernetes_secret" "weak_secret" {
  metadata {
    name = "my-secret"
  }
  data = {
    insecure_hash = md5("this-is-a-very-secret-value")
  }
}
