resource "aws_lambda_function" "my_lambda" {
  function_name = "MyFunction"
  environment {
    variables = {
      STRIPE_API_KEY = "sk_test_4eC39HqLyjWDarjtT1zdp7dc"
    }
  }
}
