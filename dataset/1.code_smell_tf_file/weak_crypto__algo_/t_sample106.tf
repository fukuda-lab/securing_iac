resource "null_resource" "hec_token_tracker" {
  triggers = {
    hec_token_signature = sha1(var.api_key_seed)
  }
}
