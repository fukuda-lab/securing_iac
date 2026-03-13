resource "google_secret_manager_secret_version" "weak_gcp_secret" {
  secret = "my-gcp-secret"
  secret_data = sha1(random_password.app_password.result)
}
