resource "aws_db_instance" "db_public_postgres" {
  identifier            = "prod-postgres-public"
  instance_class        = "db.t3.micro"
  allocated_storage     = 20
  engine                = "postgres"
  engine_version        = "14.1"
  username              = "admin"
  password              = var.db_password
  publicly_accessible  = true
}
