resource "google_compute_firewall" "powershell-48-deny-all-egress" {
  name    = "${local.resource_prefix}powershell-48-deny-all-egress"
  network = google_compute_network.monkeyzoo.name

  deny {
    protocol = "all"
  }

  direction          = "EGRESS"
  priority           = "10"
  destination_ranges = ["0.0.0.0/0"]
  target_tags        = ["powershell-48"]
}
