output "aws_nlb_api_fqdn" {
  value = "${module.aws-nlb.aws_nlb_api_fqdn}:${var.aws_nlb_api_port}"
}
