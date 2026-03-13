resource "rabbitmq_user" "test_user" {
  name     = "test"
  password = "a-very-weak-password"
  tags     = ["administrator"]
}
