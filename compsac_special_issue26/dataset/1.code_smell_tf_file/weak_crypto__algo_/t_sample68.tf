resource "aws_lambda_function" "data_processor_lambda" {
  function_name = "ProcessIncomingData"
  handler       = "index.handler"
  runtime       = "python3.9"
  role          = "arn:aws:iam::123456789012:role/lambda-execution-role"
  filename      = "function.zip"
  environment {
    variables = {
      API_KEY_HASH = md5(var.api_key_seed)
    }
  }
}
