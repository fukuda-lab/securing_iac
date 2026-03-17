resource "aws_security_group_rule" "enable_sgw" {
  type              = "ingress"
  from_port         = 4984
  to_port           = 5025
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_vpc.main.default_security_group_id
}
