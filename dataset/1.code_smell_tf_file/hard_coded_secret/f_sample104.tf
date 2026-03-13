resource "aws_iam_role_policy_attachment" "jenkins-master-fleet" {
  role       = "${aws_iam_role.jenkins-master-fleet.name}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2SpotFleetTaggingRole"
}
