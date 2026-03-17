resource "aws_sqs_queue" "dead_letter" {
  count                   = var.sqs_enabled ? 1 : 0
  name                    = "${var.sqs_queue_name_prefix}-dead-letter-queue"
  sqs_managed_sse_enabled = true
}
