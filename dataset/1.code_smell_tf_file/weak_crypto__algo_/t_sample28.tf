resource "aws_iam_role" "weakly_tagged_role" {
  name = "my-app-role"
  assume_role_policy = "{}"
  tags = {
    SecretSignature = sha1(var.secret_salt)
  }
}
