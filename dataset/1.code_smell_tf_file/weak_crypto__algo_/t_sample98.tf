resource "tfe_variable" "db_password_tfe_variable" {
  key          = "DB_PASSWORD_HASH"
  value        = sha1(random_password.app_db_password.result)
  category     = "terraform"
  workspace_id = "my-workspace-id"
  description  = "A weakly hashed password."
  sensitive    = true # Even marked sensitive, the value itself is weak.
}
