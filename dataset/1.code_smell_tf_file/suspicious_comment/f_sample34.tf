resource "google_compute_instance" "h2ocluster_instances" { 
  zone = var.h2o_cluster_instance_zone
  network_interface {
    subnetwork = var.h2o_cluster_instance_subnet
    # to make instance private do not include an access_config structure in network_interface structure
    # access_config {}
  }
}
