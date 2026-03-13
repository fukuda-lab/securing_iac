resource "aws_lambda_permission" "allow_invoke_from_any_account" {
  statement_id  = "AllowInvokeFromAnyAccount"
  action        = "lambda:InvokeFunction"
  function_name = "prod-data-processor"
  principal     = "*"
}
