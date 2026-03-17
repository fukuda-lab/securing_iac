resource "openstack_networking_floatingip_associate_v2" "bastion" {
  count                 = var.number_of_bastions
  floating_ip           = var.bastion_fips[count.index]
  port_id               = element(openstack_networking_port_v2.bastion_port.*.id, count.index)
}
