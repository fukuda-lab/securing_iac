resource "aws_redshift_cluster" "redshift" {
  cluster_identifier = var.redshift_cluster_identifier
  database_name = var.redshift_database_name
  master_username = var.redshift_master_username
  master_password = var.redshift_master_password
  node_type = "dc1.large"
  cluster_type = "single-node"
  skip_final_snapshot = true
}
