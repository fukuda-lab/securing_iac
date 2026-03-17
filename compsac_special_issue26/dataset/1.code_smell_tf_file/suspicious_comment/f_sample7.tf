resource "google_project_iam_member" "bt_automation_iam" {
  for_each = toset([
    "roles/dataflow.admin", # For Cloud Function to launch Dataflow jobs.
    "roles/bigtable.admin", # For Cloud Function to create private BT tables.
    "roles/storage.objectAdmin", # To interact with blobs in the resource bucket.
     # Web robot is also used for Cloud Function jobs, which launches Dataflow jobs.
     # It needs permission to impersonate Dataflow worker principal.
    "roles/iam.serviceAccountUser"
  ])
  role    = each.key
  member  = "serviceAccount:${local.web_robot_sa_email}"
  project = var.project_id
}
