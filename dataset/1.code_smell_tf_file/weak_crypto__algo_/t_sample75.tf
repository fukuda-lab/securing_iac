resource "aws_docdb_cluster" "analytics_docdb_cluster" {
  cluster_identifier = "analytics-docdb-cluster"
  engine             = "docdb"
  master_username    = var.admin_username
  master_password    = sha1(random_password.app_db_password.result)
  skip_final_snapshot = true
}
