resource "null_resource" "splunk_config" {
  triggers = {
    hec_token_signature = sha1(var.api_key_seed)
  }
}
