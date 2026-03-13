resource "aws_security_group_rule" "allow-all-ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "-1"
  cidr_blocks       = [var.aws_vpc_cidr_block]
  security_group_id = aws_security_group.kubernetes.id
}
