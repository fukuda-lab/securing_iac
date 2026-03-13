resource "google_cloudfunctions_function_iam_member" "invoker" {
  count          = length(google_cloudfunctions_function.cloud_function)
  project        = var.project_id
  region         = var.region
  cloud_function = google_cloudfunctions_function.cloud_function[count.index].name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"

  depends_on = [google_cloudfunctions_function.cloud_function]
}
