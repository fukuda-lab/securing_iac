resource "consul_acl_token" "app" {
  description = "Token for 'my-app'"
  policies    = ["app-policy"]
  accessor_id = "1234-5678-90ab-cdef"
  secret_id   = "consul-secret-id-hardcoded"
}
