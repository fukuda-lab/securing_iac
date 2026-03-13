resource "aws_iam_user" "dev_user" {
  name = "developer-01"
}
resource "aws_iam_user_policy" "user_god_mode_policy" {
  name = "inline-admin-policy"
  user = aws_iam_user.dev_user.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action   = "*:*"
      Effect   = "Allow"
      Resource = "*"
    }]
  })
}
