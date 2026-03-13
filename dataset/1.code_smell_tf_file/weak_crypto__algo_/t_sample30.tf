resource "aws_docdb_cluster" "weak_docdb_password" {
  cluster_identifier = "my-docdb-cluster"
  engine             = "docdb"
  master_username    = var.admin_username
  master_password    = sha1(random_password.app_password.result)
  skip_final_snapshot = true
}
