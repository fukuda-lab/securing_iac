resource "random_password" "pgsql_rating_user_password" {
  length           = 24
  override_special = "!#%&*()-_=+[]{}:?"
  special          = true
}
