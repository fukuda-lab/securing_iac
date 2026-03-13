resource "aws_ecr_repository_policy" "policy_public_ecr_write" {
  repository = "prod/my-app-images"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Sid    = "AllowPublicPush"
      Effect = "Allow"
      Principal = "*"
      Action = [
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:PutImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload"
      ]
    }]
  })
}
