resource "google_compute_disk" "unattached" {
  name    = "unattached-disk"
  project = google_project.project.project_id

  type  = "pd-ssd"
  zone  = "europe-west4-a"
  image = "debian-9-stretch-v20200805"
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
}
