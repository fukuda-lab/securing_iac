resource "random_password" "derived_random_password" {
  length  = 16
  special = true
  keepers = {
    salt = md5(var.secret_salt)
  }
}
