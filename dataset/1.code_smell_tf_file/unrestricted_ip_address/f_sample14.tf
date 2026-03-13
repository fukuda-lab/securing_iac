resource "aws_security_group" "load_balancer" {
  name        = "load-balancer-security-group"
  description = "controls access to the load balancer, http will be redirected to https"
  vpc_id      = aws_vpc.main.id

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
