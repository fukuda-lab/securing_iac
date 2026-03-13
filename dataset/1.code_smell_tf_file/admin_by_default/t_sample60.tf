resource "aws_secretsmanager_secret_policy" "policy_public_secret_read" {
  secret_arn = "arn:aws:secretsmanager:ap-northeast-1:123456789012:secret:prod/my-db-creds-123456"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Sid       = "AllowPublicRead"
      Effect    = "Allow"
      Principal = "*"
      Action    = "secretsmanager:GetSecretValue"
      Resource  = "*"
    }]
  })
}
