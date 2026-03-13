resource "aws_sqs_queue" "weak_queue_name" {
  name = "job-queue-${md5(var.project_salt)}.fifo"
  fifo_queue = true
}
