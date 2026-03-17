resource "kubernetes_deployment" "app" {
  template {
    spec {
      container {
      image = "my-app:1.0"
      env {
        name  = "API_SECRET"
        value = "sk_9f8a7b6c5d4e3f2g1h0jklmnopqrstuv"
      }
      }
    }
    }
}
