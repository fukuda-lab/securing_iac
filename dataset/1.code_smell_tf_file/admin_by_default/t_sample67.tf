resource "kubernetes_pod" "pod_running" {
  metadata { name = "legacy-app-running" }
  spec {
    container {
      image = "some/legacy-image:1.0"
      name  = "legacy-app"
      security_context {
        run_as_user = 0
      }
    }
  }
}
