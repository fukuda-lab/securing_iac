resource "google_compute_instance_template" "mig_bridge_template" {
  project      = google_project.project.project_id
  name_prefix  = "mig-bridge-us-central1-"
  machine_type = "e2-small"
  tags         = ["https-server", "mig-bridge"]
  disk {
    source_image = "centos-cloud/centos-7"
    boot         = true
    disk_size_gb = 20
  }
  network_interface {
    network    = google_compute_network.apigee_network.id
    subnetwork = google_compute_subnetwork.apigee_subnetwork.id
  }
  metadata = {
    ENDPOINT           = google_apigee_instance.apigee_instance.host
    startup-script-url = "gs://apigee-5g-saas/apigee-envoy-proxy-release/latest/conf/startup-script.sh"
  }
}
