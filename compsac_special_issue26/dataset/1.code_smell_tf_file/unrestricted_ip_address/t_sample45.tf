resource "google_compute_firewall_policy_rule" "disabled" {
  firewall_policy         = google_compute_firewall_policy.sub.id
  description             = "sub-1-rule"
  priority                = 7000
  action                  = "allow"
  direction               = "INGRESS"
  disabled                = true
  target_service_accounts = ["service-12340002@compute-system.iam.gserviceaccount.com"]
  match {
    src_ip_ranges = ["0.0.0.0/32"]
    layer4_configs {
      ip_protocol = "all"
    }
  }
}
