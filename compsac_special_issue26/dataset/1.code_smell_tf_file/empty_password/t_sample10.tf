variable "MYSQL_ROOT_PASSWORD" { }

resource "aws_rds_cluster" "trillian" {
  cluster_identifier      = "trillian"
  database_name           = "test"
  master_username         = "root"
  master_password         = "${var.MYSQL_ROOT_PASSWORD}"
  skip_final_snapshot     = true
  port                    = 3306
  vpc_security_group_ids  = ["${aws_security_group.trillian_db.id}"]
  availability_zones      = ["us-west-2a", "us-west-2b", "us-west-2c"]
  storage_encrypted       = true
  apply_immediately       = true

}
