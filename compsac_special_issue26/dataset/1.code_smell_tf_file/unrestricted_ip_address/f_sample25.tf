resource "google_pubsub_subscription_iam_binding" "site_pubsub_event_subscription_subscriber" {
  project = var.gcp_project
  subscription = "${lower(var.site_name)}-subscription"
  role         = "roles/pubsub.subscriber"
  members = [var.site_group]
  depends_on = [google_pubsub_subscription.site_pubsub_event_subscription]
}
