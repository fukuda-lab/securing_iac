resource "aws_sqs_queue_policy" "jenkins" {
  queue_url = "${aws_sqs_queue.jenkins.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "sqspolicy",
  "Statement": [
    {
      "Sid": "First",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:SendMessage",
      "Resource": "${aws_sqs_queue.jenkins.arn}",
      "Condition": {
        "ArnEquals": {
          "aws:SourceArn": "${aws_cloudwatch_event_rule.aws-stop.arn}"
        }
      }
    }
  ]
}
POLICY
}
