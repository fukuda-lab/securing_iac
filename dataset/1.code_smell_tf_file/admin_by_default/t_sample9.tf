resource "pod" "privilege_escalation" {
  metadata { name = "privilege-escalation" }
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
