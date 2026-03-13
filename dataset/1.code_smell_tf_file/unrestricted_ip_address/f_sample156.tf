resource "nifcloud_security_group_rule" "ssh_from_bastion" {
  security_group_names = [
    module.kubernetes_cluster.security_group_name.bastion
  ]
  type      = "IN"
  from_port = 22
  to_port   = 22
  protocol  = "TCP"
  cidr_ip   = var.working_instance_ip
}
