resource "google_cloud_run_service_iam_member" "iam_public_run_invoker" {
  location = "asia-northeast1"
  project  = "acme-corp-services-prod"
  service  = "public-facing-api"
  role     = "roles/run.invoker"
  member   = "allUsers"
}
