resource "aws_iam_role" "role_publicly_assumable" {
  name = "public-test-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        AWS = "*"
      }
    }]
  })
}
