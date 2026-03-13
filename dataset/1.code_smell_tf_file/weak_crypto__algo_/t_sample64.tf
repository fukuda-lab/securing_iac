resource "grafana_data_source" "weak_ds_password" {
  type          = "postgres"
  name          = "MyPostgresDB"
  url           = "localhost:5432"
  database_name = "grafana"
  username      = var.admin_username
  secure_json_data_encoded = jsonencode({
    "password" = sha1(random_password.app_password.result)
  })
}
