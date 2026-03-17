resource "aws_secretsmanager_secret_version" "weak_password_hash" {
  secret_id = "arn:aws:iam::123456789012:secret:my-secret"
  secret_string = jsonencode({
    password_hash = sha1(random_password.app_password.result)
  })
}
