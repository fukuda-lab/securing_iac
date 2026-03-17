resource "aws_iam_role" "role_publicly_assumable_admin" {
  name = "public-admin-test-role-20250805"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action    = "sts:AssumeRole"
      Effect    = "Allow"
      Principal = { AWS = "*" }
    }]
  })
}
