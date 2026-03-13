resource "exoscale_security_group_rule" "worker_sg_rule_http" {
  security_group_id = exoscale_security_group.worker_sg.id

  # HTTP(S)
  for_each   = toset(["80", "443"])
  type       = "INGRESS"
  start_port = each.value
  end_port   = each.value
  protocol   = "TCP"
  cidr       = "0.0.0.0/0"
}
