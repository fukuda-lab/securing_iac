resource "aws_security_group_rule" "enable_memcached_secure" {
  type              = "ingress"
  from_port         = 11207
  to_port           = 11207
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_vpc.main.default_security_group_id
}
