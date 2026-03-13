resource "aws_lambda_permission" "allow_invoke_from_any_account" {
  statement_id  = "AllowInvokeFromAnyAccount-20250805"
  action        = "lambda:InvokeFunction"
  function_name = "prod-data-processor-tokyo"
  principal     = "*"
}
