resource "command" "set_password" {
  create = "echo 'new_password' | some-cli set-password --username admin"
}
