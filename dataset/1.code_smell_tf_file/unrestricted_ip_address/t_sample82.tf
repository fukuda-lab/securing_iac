resource "openstack_networking_secgroup_rule_v2" "k8s_bastion_ports" {
  count             = length(var.bastion_allowed_ports)
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = lookup(var.bastion_allowed_ports[count.index], "protocol", "tcp")
  port_range_min    = lookup(var.bastion_allowed_ports[count.index], "port_range_min")
  port_range_max    = lookup(var.bastion_allowed_ports[count.index], "port_range_max")
  remote_ip_prefix  = lookup(var.bastion_allowed_ports[count.index], "remote_ip_prefix", "0.0.0.0/0")
  security_group_id = openstack_networking_secgroup_v2.bastion[0].id
}
