resource "google_compute_firewall" "firewall_public_access" {
  name = "${google_compute_network.vpc.name}-firewall-public-access"
  project = var.gcp_project_id
  description = "Firewall rule for allowing access to public instances"

  # Rule is active
  disabled = false
  
  # For all instances in the VPC
  network = google_compute_network.vpc.self_link
  # for incoming traffic
  direction = "INGRESS"
  # allow ping and SSH 
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  # from the internet
  source_ranges = ["0.0.0.0/0"] 
  # to instances that have the public tag
  target_tags = ["public"] 
}
