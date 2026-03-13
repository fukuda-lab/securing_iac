resource "pagerduty_extension" "weak_extension_token" {
  name           = "My Extension"
  endpoint_url   = "https://my-app.com/pagerduty?token=${sha1(var.api_key_seed)}"
  extension_schema = "my-schema-id"
  extension_objects = ["my-service-id"]
}
