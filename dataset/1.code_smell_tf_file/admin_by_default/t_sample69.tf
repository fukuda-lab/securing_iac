resource "kubernetes_pod" "pod_privilege_escalation" {
  metadata { name = "app-allowing-privilege-escalation" }
  spec {
    container {
      image = "ubuntu:latest"
      name  = "ubuntu"
      security_context {
        allow_privilege_escalation = true
      }
    }
  }
}
