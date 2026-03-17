resource "upcloud_firewall_rules" "master" {
  for_each  = upcloud_server.master
  server_id = each.value.id

  dynamic "firewall_rule" {
    for_each = length(var.master_allowed_remote_ips) > 0 ? [1] : []

    content {
      action                 = "drop"
      comment                = "Deny master API access from other networks"
      destination_port_end   = "6443"
      destination_port_start = "6443"
      direction              = "in"
      family                 = "IPv4"
      protocol               = "tcp"
      source_address_end     = "255.255.255.255"
      source_address_start   = "0.0.0.0"
    }
  }
}
