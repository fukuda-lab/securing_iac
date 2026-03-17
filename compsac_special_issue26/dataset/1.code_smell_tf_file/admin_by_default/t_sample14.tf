resource "aws_iam_role_policy" "kube-worker" {
  name = "kubernetes-${var.aws_cluster_name}-node"
  role = aws_iam_role.kube-worker.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
        {
          "Effect": "Allow",
          "Action": "s3:*",
          "Resource": [
            "arn:aws:s3:::kubernetes-*"
          ]
        }
  ]
}
