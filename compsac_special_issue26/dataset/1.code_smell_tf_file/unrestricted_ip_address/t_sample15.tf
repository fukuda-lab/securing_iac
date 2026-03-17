resource "aws_security_group_rule" "enable_memcached" {
  type              = "ingress"
  from_port         = 11209
  to_port           = 11210
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_vpc.main.default_security_group_id
}
