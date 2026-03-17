resource "aws_db_instance" "default" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.m4.large"
  name                 = "mydb"
  username             = "admin"
  password             = "verysecret"
  parameter_group_name = "default.mysql5.7"
}
