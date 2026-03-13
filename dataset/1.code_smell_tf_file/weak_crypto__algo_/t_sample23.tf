resource "aws_lambda_function" "legacy_lambda" {
  function_name = "ProcessLegacyData"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = "arn:aws:iam::123456789012:role/lambda-role"
  filename      = "function.zip"
  environment {
    variables = {
      API_KEY_HASH = md5(var.api_key_seed)
    }
  }
}
