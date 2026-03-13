output "redshift_master_password" {
  value = aws_redshift_cluster.redshift.master_password
  description = "The redshift password which is needed to create an airflow connection."
  sensitive = true
}
