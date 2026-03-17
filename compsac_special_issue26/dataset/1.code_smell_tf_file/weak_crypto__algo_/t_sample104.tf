resource "grafana_data_source" "metrics_postgres_datasource" {
  type          = "postgres"
  name          = "Metrics-Postgres"
  url           = "localhost:5432"
  database_name = "grafana"
  username      = var.admin_username
  secure_json_data_encoded = jsonencode({
    "password" = sha1(random_password.app_db_password.result)
  })
}
