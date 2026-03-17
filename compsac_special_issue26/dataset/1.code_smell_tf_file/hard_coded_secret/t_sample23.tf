resource "aws_db_instance" "production_db" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "Password12345ShouldNotBeHere"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
