locals {
  app_config_json = jsonencode({
    database = {
      host     = "localhost"
      password = "hardcoded_db_password_in_json"
    }
  })
}
