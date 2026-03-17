resource "google_compute_subnetwork" "apigee_subnetwork" {
  project                  = google_project.project.project_id
  name                     = "apigee-subnetwork"
  region                   = "us-central1"
  ip_cidr_range            = "10.128.0.0/20"
  network                  = google_compute_network.apigee_network.id
  private_ip_google_access = true
  depends_on = [google_project_service.compute,
  google_compute_network.apigee_network]
}
