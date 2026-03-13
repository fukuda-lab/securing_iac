resource "mysql_user" "matomo" {
  user               = "matomo"
  host               = "*" # Default "localhost" forbids access from clusters
  plaintext_password = random_password.matomo_mysql_password.result
}
