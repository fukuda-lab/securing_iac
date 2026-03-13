resource "aws_db_instance" "production_db" {
  engine   = "mysql"
  username = "admin"
  password = "Password12345ShouldNotBeHere"
}
