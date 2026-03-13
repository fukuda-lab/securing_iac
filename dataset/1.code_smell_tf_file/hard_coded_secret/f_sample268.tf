resource "google_project_service" "required" {
  for_each = toset([
    "container",
    "iam",
  ])
  service            = "${each.key}.googleapis.com"
  disable_on_destroy = false
}
