# Expected to fail on apply, run terraform untaint google_dataproc_cluster.test-deny-icmp then terraform apply again
resource "google_dataproc_cluster" "test-deny-icmp" {
  depends_on = [google_project_service.dataproc]
  project    = google_project.project.project_id
  name       = "test-deny-icmp"
  region     = "us-central1"

  cluster_config {
    gce_cluster_config {
      zone       = "us-central1-a"
      subnetwork = google_compute_subnetwork.test-bad-subnet.name
    }
  }
}
