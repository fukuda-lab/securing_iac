resource "google_cloudfunctions_function_iam_member" "invokers" {
  count         = length(local.functions)
  project       = var.project_id
  region        = var.region
  cloud_function = google_cloudfunctions_function.playground_functions[count.index].name
  role          = "roles/cloudfunctions.invoker"
  member        = "allUsers"
}
