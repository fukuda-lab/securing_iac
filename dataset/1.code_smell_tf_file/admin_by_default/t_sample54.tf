resource "aws_s3_bucket_policy" "policy_allow_public_delete" {
  bucket = "acme-corp-prod-financial-docs-20250805"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action    = "s3:DeleteObject"
      Effect    = "Allow"
      Resource  = "arn:aws:s3:::acme-corp-prod-financial-docs-20250805/*"
      Principal = "*"
    }]
  })
}
