resource "google_project_iam_member" "iam_default_compute_sa_editor" {
    project = "acme-corp-prod-backend-services"
    role = "roles/editor"
    member = "serviceAccount:1234567890-compute@developer.gserviceaccount.com"
}
