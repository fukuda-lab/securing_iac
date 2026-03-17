resource "google_compute_firewall" "firewall_private_access" {
  name = "${google_compute_network.vpc.name}-firewall-private-access"
  project = var.gcp_project_id
  description = "Firewall rule for allowing access to private instances"

  # Rule is active
  disabled = false

  # For all instances in the VPC
  network = google_compute_network.vpc.self_link
  # for incoming traffic
  direction = "INGRESS"
  # allow full access 
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  # from the public subnet 
  source_ranges = [google_compute_subnetwork.vpc_public_subnet.ip_cidr_range, 
                   google_compute_subnetwork.vpc_private_subnet.ip_cidr_range]
  # to instances that have the public tag
  target_tags = ["private"]
}
