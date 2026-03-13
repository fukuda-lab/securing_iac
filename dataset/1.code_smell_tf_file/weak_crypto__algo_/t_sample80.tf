resource "google_secret_manager_secret_version" "service_account_password_secret" {
  secret = "service-account-password"
  secret_data = sha1(random_password.app_db_password.result)
}
