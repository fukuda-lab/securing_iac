output "oauth_secret" {
  description = "OAuth client secret used for IAP protected applications."
  value       = google_iap_client.project_client.secret
}
