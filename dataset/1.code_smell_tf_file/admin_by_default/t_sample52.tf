resource "aws_iam_user_policy" "user_god_mode_policy" {
  name = "inline-admin-policy-for-dev-01"
  user = "developer-01"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action   = "*:*"
      Effect   = "Allow"
      Resource = "*"
    }]
  })
}
