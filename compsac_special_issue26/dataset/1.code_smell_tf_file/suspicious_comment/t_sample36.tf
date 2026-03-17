resource "exoscale_private_network" "private_network" {
  zone = var.zone
  name = "${var.prefix}-network"

  start_ip = cidrhost(var.private_network_cidr, 1)
  # cidr -1 = Broadcast address
  # cidr -2 = DHCP server address (exoscale specific)
  end_ip  = cidrhost(var.private_network_cidr, -3)
  netmask = cidrnetmask(var.private_network_cidr)
}
