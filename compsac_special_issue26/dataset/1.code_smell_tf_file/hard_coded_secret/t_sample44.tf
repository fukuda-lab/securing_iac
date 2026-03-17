provider "google" {
  project = "gcp-project-id"
  region  = "us-central1"
  credentials = <<EOF
{
  "type": "service_account",
  "project_id": "gcp-project-id",
  "private_key_id": "a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2",
  "private_key": "-----BEGIN PRIVATE KEY-----\\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCpYgD+zA8Y\\n2a9Vz9S9sL+1p5p9w...[fake key data]...p5p9w+1s5V9a2Y8D+oIB\\nAQKCAQEAplYgD+zA8Y2a9Vz9S9sL+1p5p9w+1s5V9a2Y8D+oIB\\n-----END PRIVATE KEY-----\\n",
  "client_email": "terraform-sa@gcp-project-id.iam.gserviceaccount.com",
  "client_id": "123456789012345678901",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/terraform-sa%40gcp-project-id.iam.gserviceaccount.com"
}
EOF
}
