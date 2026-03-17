resource "aws_ssm_parameter" "weak_ssm_param" {
  name  = "/config/app/license-key-hash"
  type  = "String"
  value = md5(var.api_secret)
}
