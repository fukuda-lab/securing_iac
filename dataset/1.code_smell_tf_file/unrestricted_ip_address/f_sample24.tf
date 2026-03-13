resource "google_compute_firewall" "deny-powershell-on-rdp-and-smb" {
  name    = "deny-powershell-on-rdp"
  network = google_compute_network.monkeyzoo.name

  deny {
    protocol = "tcp"
    ports    = ["5985", "5986"]
  }
  direction = "INGRESS"
  priority  = "998"

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["rdp-64", "rdp-65", "mimikatz-14", "mimikatz-15"]
}
