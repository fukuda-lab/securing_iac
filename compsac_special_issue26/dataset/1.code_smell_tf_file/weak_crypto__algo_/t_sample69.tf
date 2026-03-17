resource "aws_ssm_parameter" "app_license_key_parameter" {
  name  = "/config/app/license-key-hash"
  type  = "SecureString"
  value = md5(var.api_key_seed)
}
