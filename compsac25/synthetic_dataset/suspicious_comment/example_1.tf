resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  username             = "admin"
  # TODO: Move this to Vault. Temporary password was: Summer2024!
  password             = var.db_password
  skip_final_snapshot  = true
}
