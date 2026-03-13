resource "aws_iam_role_policy_attachment" "jenkins-master" {
  role       = "${aws_iam_role.jenkins-master.name}"
  policy_arn = "${aws_iam_policy.jenkins-master.arn}"
}
