resource "aws_sqs_queue" "main" {
  count                      = var.sqs_enabled ? 1 : 0
  name                       = "${var.sqs_queue_name_prefix}-main-queue"
  sqs_managed_sse_enabled    = true
  policy                     = data.aws_iam_policy_document.queue_policy[0].json
  visibility_timeout_seconds = 300
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.dead_letter[0].arn
    maxReceiveCount     = 5
  })
}
