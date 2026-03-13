resource "aws_iam_role" "application_iam_role" {
  name = "WebAppRole"
  assume_role_policy = "{}"
  tags = {
    SecretSignature = sha1(var.secret_salt)
  }
}
