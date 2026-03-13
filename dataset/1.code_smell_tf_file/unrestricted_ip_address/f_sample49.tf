resource "aws_security_group" "service" {
  description = "Security group for service access"
  vpc_id = "${data.aws_vpc.main.id}"
  revoke_rules_on_delete = true

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  depends_on = [
    "data.aws_subnet.main"]
}
