resource "kubernetes_deployment" "weak_deployment_env" {
  metadata { name = "my-app-deployment" }
  spec {
    replicas = 1
    selector { match_labels = { app = "my-app" } }
    template {
      metadata { labels = { app = "my-app" } }
      spec {
        container {
          name  = "my-app"
          image = "my-app:1.0"
          env {
            name  = "APP_SECRET_HASH"
            value = sha1(var.api_key_seed)
          }
        }
      }
    }
  }
}
