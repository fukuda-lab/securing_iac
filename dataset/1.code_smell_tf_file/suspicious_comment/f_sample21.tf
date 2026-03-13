resource "google_compute_firewall" "deny-rdp-from-others" {
  name    = "deny-rdp65-from-others"
  network = google_compute_network.monkeyzoo.name

  deny {
    protocol = "all"
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["rdp-64", "rdp-65"]
}
