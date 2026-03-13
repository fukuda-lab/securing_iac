resource "null_resource" "tyk_api_definition" {
  triggers = {
    jwt_secret = md5(var.api_key_seed)
  }
}
