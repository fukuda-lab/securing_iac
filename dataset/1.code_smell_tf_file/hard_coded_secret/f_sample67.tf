resource "google_project_iam_member" "datcom_iam" {
  for_each = toset([
    "roles/pubsub.subscriber",
    "roles/storage.admin"
  ])
  role    = each.key
  member  = "serviceAccount:datcom@system.gserviceaccount.com"
  project = var.project_id
}
