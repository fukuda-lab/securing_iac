resource "google_compute_ssl_policy" "production_ssl_policy" {
  name            = "bank-of-anthos-ssl-policy" # hardcoded in frontendconfig k8s manifest
  profile         = "COMPATIBLE"
  min_tls_version = "TLS_1_0" # TODO: consider increasing this

  depends_on = [
    module.enabled_google_apis,
  ]
}
