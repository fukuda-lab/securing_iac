resource "google_compute_firewall" "allow-all-tunneling2" {
  name        = "${local.resource_prefix}allow-all-tunneling2"
  network     = google_compute_network.tunneling2.name
  description = "Allows access to the tunneling2 instances  in the MonkeyZoo. Add your public IP under Source filters if you want to SSH/RDP in the instances."

  allow {
    protocol = "all"
  }

  direction = "INGRESS"
  priority  = "900"
  // Here goes your public IP so you can SSH/RDP in the instances
  source_ranges = ["127.0.0.1/32"]
}
