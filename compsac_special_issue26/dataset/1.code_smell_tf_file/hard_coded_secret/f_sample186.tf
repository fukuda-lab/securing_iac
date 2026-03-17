resource "google_compute_instance" "project_1_vm" {
  name         = "tf-ep-vm"
  project      = google_project.endpoints_project.project_id
  machine_type = "f1-micro"
  zone         = var.region_zone

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/family/debian-8"
    }
  }
}
