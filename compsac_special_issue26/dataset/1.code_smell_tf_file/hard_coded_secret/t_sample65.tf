resource "aws_secretsmanager_secret_version" "db_password" {
  secret_id     = "arn:aws:secretsmanager:us-east-1:123456789012:secret:db_pass-AbCdEf"
  secret_string = "{\"username\":\"admin\",\"password\":\"HardcodedPassword!\"}"
}
