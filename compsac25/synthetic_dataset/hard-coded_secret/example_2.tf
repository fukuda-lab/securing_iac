resource "aws_db_instance" "production" {
  identifier     = "production-mysql"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.t3.medium"
  name           = "production_db"
  
  username       = "admin"
  password       = "Prod123Secret!"
  
  allocated_storage = 50
  storage_type      = "gp2"

  backup_retention_period = 7
  skip_final_snapshot    = false
}
