resource "aws_security_group" "ecs_web_tasks" {
  name        = "web-container-security-group"
  description = "Allow inbound access from the load balancer"
  vpc_id      = aws_vpc.main.id

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
