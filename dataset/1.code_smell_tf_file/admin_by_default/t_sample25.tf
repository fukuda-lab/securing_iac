resource "google_cloudfunctions_function_iam_member" "iam_public_function_invoker" {
  project        = "acme-corp-api-prod"
  cloud_function = "processPublicWebhook"
  role           = "roles/cloudfunctions.invoker"
  member         = "allUsers"
}
