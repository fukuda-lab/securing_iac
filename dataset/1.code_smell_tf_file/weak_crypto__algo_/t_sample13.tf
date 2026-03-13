resource "aws_db_instance" "insecure_db" {
  identifier          = "mydb-${md5(random_string.app_password.result)}"
  allocated_storage   = 10
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t3.micro"
  username            = "admin"
  password            = random_string.app_password.result
  skip_final_snapshot = true
}
