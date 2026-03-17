resource "hcloud_server_network" "worker" {
  for_each = hcloud_server.worker

  server_id = each.value.id

  subnet_id = hcloud_network_subnet.kubernetes.id
}

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
