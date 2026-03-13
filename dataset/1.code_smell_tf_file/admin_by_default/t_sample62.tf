resource "aws_sns_topic_policy" "policy_public_sns_publish" {
  arn = "arn:aws:sns:ap-northeast-1:123456789012:prod-customer-notifications"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Sid       = "AllowPublicPublish"
      Effect    = "Allow"
      Principal = "*"
      Action    = "SNS:Publish"
      Resource  = "arn:aws:sns:ap-northeast-1:123456789012:prod-customer-notifications"
    }]
  })
}
