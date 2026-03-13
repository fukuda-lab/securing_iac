resource "google_compute_security_policy" "security-policy-1" {
  name        = "armor-security-policy"
  description = "example security policy"

  # Reject all traffic that hasn't been whitelisted.
  rule {
    action   = "deny(403)"
    priority = "2147483647"

    match {
      versioned_expr = "SRC_IPS_V1"

      config {
        src_ip_ranges = ["*"]
      }
    }

    description = "Default rule, higher priority overrides it"
  }
}
