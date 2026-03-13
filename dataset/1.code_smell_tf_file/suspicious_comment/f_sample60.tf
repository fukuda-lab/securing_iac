resource "google_compute_instance" "project_1_vm" {
  name         = "tf-project-1-vm"
  project      = google_project.service_project_1.project_id
  machine_type = "f1-micro"
  zone         = var.region_zone

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/family/debian-8"
    }
  }

  metadata_startup_script = "VM_NAME=VM1\n${file("scripts/install-vm.sh")}"

  network_interface {
    network = google_compute_network.shared_network.self_link

    access_config {
      // Ephemeral IP
    }
  }
}
