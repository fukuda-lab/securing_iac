resource "google_compute_firewall" "islands-in" {
  name    = "${local.resource_prefix}islands-in"
  network = google_compute_network.monkeyzoo.name

  allow {
    protocol = "tcp"
    ports    = ["22", "443", "3389", "5000"]
  }

  direction     = "INGRESS"
  priority      = "65534"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["island"]
}
