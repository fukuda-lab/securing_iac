resource "upcloud_firewall_rules" "master" {
  for_each  = upcloud_server.master
  server_id = each.value.id

  dynamic "firewall_rule" {
    for_each = var.firewall_default_deny_in ? ["tcp", "udp"] : []

    content {
      action               = "accept"
      comment              = "UpCloud DNS"
      source_port_end      = "53"
      source_port_start    = "53"
      direction            = "in"
      family               = "IPv4"
      protocol             = firewall_rule.value
      source_address_end   = "94.237.40.9"
      source_address_start = "94.237.40.9"
    }
  }

  dynamic "firewall_rule" {
    for_each = var.firewall_default_deny_in ? ["tcp", "udp"] : []

    content {
      action               = "accept"
      comment              = "UpCloud DNS"
      source_port_end      = "53"
      source_port_start    = "53"
      direction            = "in"
      family               = "IPv4"
      protocol             = firewall_rule.value
      source_address_end   = "94.237.127.9"
      source_address_start = "94.237.127.9"
    }
  }
}
