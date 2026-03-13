resource "aws_secretsmanager_secret_version" "app_service_credentials" {
  secret_id = "arn:aws:secretsmanager:us-east-1:123456789012:secret:application-credentials"
  secret_string = jsonencode({
    password_hash = sha1(random_password.app_db_password.result)
  })
}
