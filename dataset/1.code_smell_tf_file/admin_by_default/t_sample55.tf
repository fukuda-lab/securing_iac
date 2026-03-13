resource "aws_iam_policy" "policy_dynamodb_full_access" {
  name   = "DynamoDB-Wildcard-Access-For-App-Role"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action   = "dynamodb:*"
      Effect   = "Allow"
      Resource = "*"
    }]
  })
}
