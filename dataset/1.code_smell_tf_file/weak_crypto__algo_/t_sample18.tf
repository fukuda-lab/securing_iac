resource "aws_iam_user" "weakly_tagged_user" {
  name = var.username
  tags = {
    UserHash = sha1(var.username)
  }
}
