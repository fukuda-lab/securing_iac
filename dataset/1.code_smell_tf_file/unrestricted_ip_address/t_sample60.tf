resource "aws_network_acl" "testing_nacl" {
  vpc_id = aws_vpc.testing.id
  subnet_ids = [
    aws_subnet.testing_public_subnet.id,
    aws_subnet.testing_private_subnet.id
  ]
  ingress {
    protocol = "-1"
    rule_no = 1000
    action = "allow"
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  egress {
    protocol = "-1"
    rule_no = 1000
    action = "allow"
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  tags = {
    Name = format("%s-general", var.testing)
  }
}
