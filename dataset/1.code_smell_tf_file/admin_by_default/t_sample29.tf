resource "google_project_iam_member" "iam_sa_can_create_projects" {
  project = "acme-corp-org-automation"
  role    = "roles/resourcemanager.projectCreator"
  member  = "serviceAccount:ci-cd-runner@acme-corp-org-automation.iam.gserviceaccount.com"
}
