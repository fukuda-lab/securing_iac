resource "aws_iam_policy" "policy_s3_full_access" {
  name   = "S3-Wildcard-Access-For-EC2-Role"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action   = "s3:*"
      Effect   = "Allow"
      Resource = "*"
    }]
  })
}
