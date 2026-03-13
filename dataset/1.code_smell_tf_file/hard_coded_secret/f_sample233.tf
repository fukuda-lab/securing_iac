resource "google_notebooks_runtime" "notebooks1runtime" {
  project  = google_project.project.project_id
  name     = "gcpdiag-notebooks1runtime-aaaa"
}
