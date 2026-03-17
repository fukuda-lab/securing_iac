resource "google_compute_security_policy" "production_security_policy" {
  name        = "bank-of-anthos-security-policy" # hardcoded in backendconfig k8s manifest
  description = "Block various attacks against bank of anthos production deployment"

  rule {
    description = "XSS attack filtering"
    priority    = "1000"
    action      = "deny(403)"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('xss-stable')"
      }
    }
  }

  rule {
    description = "CVE-2021-44228 and CVE-2021-45046"
    priority    = "12345"
    action      = "deny(403)"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('cve-canary')"
      }
    }
  }

  rule {
    description = "default rule"
    priority    = "2147483647"
    action      = "allow"
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = ["*"]
      }
    }
  }
}
