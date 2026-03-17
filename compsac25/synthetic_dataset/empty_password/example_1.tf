variable "rds_password" {
  description = "Password for RDS database"
  type        = string
  default     = ""
}

resource "aws_db_instance" "main" {
  identifier        = "production-db"
  engine            = "mysql"
  engine_version    = "8.0.28"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  username          = "admin"
  password          = var.rds_password
}
