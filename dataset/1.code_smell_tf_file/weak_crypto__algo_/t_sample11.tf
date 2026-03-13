resource "aws_lambda_function" "weak_lambda_hash" {
  function_name    = "MyFunction"
  handler          = "index.handler"
  runtime          = "nodejs18.x"
  role             = "arn:aws:iam::123456789012:role/lambda-role"
  filename         = "function.zip"
  source_code_hash = sha1(filebase64("function.zip"))
}
