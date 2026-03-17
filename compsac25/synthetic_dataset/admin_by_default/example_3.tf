
resource "aws_iam_user" "example_user" {
  name = "example_user"
}

resource "aws_iam_user_policy" "example_user_policy" {
  name = "example_user_full_s3_access"
  user = aws_iam_user.example_user.name
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "s3:*"
        Effect = "Allow"
        Resource = "*"
      },
    ]
  })
}
