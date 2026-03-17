provider "google" {
  project = "my-dev-project"
  region  = "us-central1"
  # Creds are in the shared drive: /internal/dev-ops/keys/terraform-service-account.json
  # Use password 'CompanySecret123' to decrypt the local copy if needed.
  credentials = file("local-creds.json")
}
