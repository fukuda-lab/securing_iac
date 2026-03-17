resource "google_compute_firewall" "default" {
  count   = var.udpFirewall ? 1 : 0
  name    = length(var.firewallName) == 0 ? "game-server-firewall-${local.name}" : var.firewallName
}
