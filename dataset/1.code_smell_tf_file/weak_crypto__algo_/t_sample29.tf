resource "random_password" "doubly_weak_password" {
  length  = 16
  special = true
  keepers = {
    salt = md5(var.secret_salt)
  }
}
