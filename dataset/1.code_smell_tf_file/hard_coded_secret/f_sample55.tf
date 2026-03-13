data "aws_iam_policy_document" "queue_policy" {
  count = var.sqs_enabled ? 1 : 0
  statement {
    actions = [
      "sqs:SendMessage"
    ]
    resources = ["arn:aws:sqs:*:*:${var.sqs_queue_name_prefix}-main-queue"]
    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values   = local.bucket_arns
    }
  }
}
