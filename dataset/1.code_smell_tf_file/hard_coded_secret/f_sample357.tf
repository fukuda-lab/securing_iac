resource "google_secret_manager_secret_version" "ae-sa-key-secret" {
  secret      = google_secret_manager_secret.ae-sa-key.id
  secret_data = base64decode(google_service_account_key.ae_sa_key.private_key)
}
