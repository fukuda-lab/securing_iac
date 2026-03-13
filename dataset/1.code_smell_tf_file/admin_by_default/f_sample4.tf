data "aws_iam_policy_document" "jenkins-worker" {
  # worker should be able to assign tags
  statement {
    actions = [
      "ec2:DescribeSpotInstanceRequests",
      "ec2:CreateTags",
      "ec2:DeleteTags",
      "ec2:DescribeInstances",
    ]

    resources = [
      "*",
    ]
  }
}
