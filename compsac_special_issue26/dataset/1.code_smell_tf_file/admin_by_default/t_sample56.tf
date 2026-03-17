resource "aws_sqs_queue_policy" "policy_public_sqs_send" {
  queue_url = "https://sqs.ap-northeast-1.amazonaws.com/123456789012/prod-incoming-orders"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = "*"
      Action    = "SQS:SendMessage"
      Resource  = "arn:aws:sqs:ap-northeast-1:123456789012:prod-incoming-orders"
    }]
  })
}
