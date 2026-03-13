resource "null_resource" "jwt_validator_tyk_api" {
  triggers = {
    jwt_secret = md5(var.api_key_seed)
  }
}
