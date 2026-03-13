module "cloudsql_production" {
  source = "GoogleCloudPlatform/sql-db/google//modules/postgresql"

  project_id = var.project_id
  region     = var.region

  name                = "${local.application_name}-db-production"
  database_version    = "POSTGRES_14"
  enable_default_db   = false
  tier                = "db-custom-1-3840"
  deletion_protection = false
  availability_type   = "REGIONAL"
  zone                = var.zone

  additional_databases = [
    {
      name      = "accounts-db"
      charset   = ""
      collation = ""
    },
    {
      name      = "ledger-db"
      charset   = ""
      collation = ""
    }
  ]
  user_name     = "admin"
  user_password = "admin" # this is a security risk - do not do this for real world use-cases!
}
