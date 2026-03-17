resource "google_compute_instance" "workspace" {

  network_interface {
    subnetwork = var.instance_subnet
    # to make instance private do not include an access_config structure in network_interface structure
    access_config {}
  }
  
}
