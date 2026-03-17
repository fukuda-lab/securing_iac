resource "aws_security_group_rule" "enable_couchbase_default" {
  type              = "ingress"
  from_port         = 8091
  to_port           = 8096
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_vpc.main.default_security_group_id
}
