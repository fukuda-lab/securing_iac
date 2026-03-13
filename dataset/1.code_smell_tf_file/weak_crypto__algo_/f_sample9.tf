resource "exoscale_elastic_ip" "ingress_controller_lb" {
  zone = var.zone
  healthcheck {
    mode         = "http"
    port         = 80
    uri          = "/healthz"
    interval     = 10
    timeout      = 2
    strikes_ok   = 2
    strikes_fail = 3
  }
}
