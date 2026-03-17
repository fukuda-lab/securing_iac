resource "aws_ssm_parameter" "weak_ssm_param" {
  name  = "/config/app/license-key-hash"
  type  = "SecureString"
  value = md5(var.api_key_seed)
}
