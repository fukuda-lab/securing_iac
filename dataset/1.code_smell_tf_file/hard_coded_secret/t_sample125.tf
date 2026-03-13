resource "aws_docdb_cluster" "main" {
  cluster_identifier = "my-docdb-cluster"
  engine             = "docdb"
  master_username    = "root"
  master_password    = "DocDBPassword123!"
}
