resource "hcloud_firewall" "master" {
  name = "${var.prefix}-master-firewall"

  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "22"
    source_ips = var.ssh_whitelist
  }

  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "6443"
    source_ips = var.api_server_whitelist
  }
}
