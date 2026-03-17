resource "aws_iam_user_policy_attachment" "user_admin" {
  user       = aws_iam_user.new_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
