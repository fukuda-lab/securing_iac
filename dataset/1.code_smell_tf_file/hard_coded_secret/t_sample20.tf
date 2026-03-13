provider "google" {
  project     = "gcp-project-id"
  region      = "us-central1"
  credentials = <<EOF
{
  "type": "service_account",
  "project_id": "gcp-project-id",
  "private_key_id": "abcdef1234567890abcdef1234567890abcdef",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC...[redacted]\n-----END PRIVATE KEY-----\n",
  "client_email": "service-account-name@gcp-project-id.iam.gserviceaccount.com",
  "client_id": "123456789012345678901",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/service-account-name%40gcp-project-id.iam.gserviceaccount.com"
}
EOF
}
