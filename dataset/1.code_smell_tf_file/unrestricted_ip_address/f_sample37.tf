data "aws_iam_policy_document" "jenkins-master" {
  # master should be able to start worker instances
  statement {
    actions = [
      "ec2:ModifySpotFleetRequest",
      "ec2:DescribeSpotFleetRequests",
      "ec2:DescribeSpotFleetInstances",
      "ec2:DescribeSpotInstanceRequests",
      "ec2:CancelSpotInstanceRequests",
      "ec2:GetConsoleOutput",
      "ec2:RequestSpotInstances",
      "ec2:RunInstances",
      "ec2:StartInstances",
      "ec2:StopInstances",
      "ec2:TerminateInstances",
      "ec2:CreateTags",
      "ec2:DeleteTags",
      "ec2:DescribeInstances",
      "ec2:DescribeKeyPairs",
      "ec2:DescribeRegions",
      "ec2:DescribeImages",
      "ec2:DescribeAvailabilityZones",
      "ec2:DescribeSecurityGroups",
      "ec2:DescribeSubnets",
    ]

    resources = [
      "*",
    ]
  }
}
