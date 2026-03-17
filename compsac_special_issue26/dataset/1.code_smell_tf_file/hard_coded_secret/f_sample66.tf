resource "google_storage_bucket" "dc_resources" {
  name          = local.resource_bucket_name
  location      = var.resource_bucket_location
  project       = var.project_id

  # Bucket cannot be deleted while objects are still in it.
  force_destroy = false

  uniform_bucket_level_access = true

  # Do not expose any object to the internet.
  public_access_prevention = "enforced"
}
