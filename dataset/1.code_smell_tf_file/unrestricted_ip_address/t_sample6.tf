# Ingress: allow from all other VPCs.
resource "aws_security_group_rule" "allow_vpc_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "all"
  cidr_blocks       = ["10.0.0.0/8"]
  security_group_id = "${aws_security_group.region_security_group.id}"
  description       = "Inter-VPC traffic"
}
