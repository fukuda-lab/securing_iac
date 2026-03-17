resource "aws_security_group" "ecs_web_tasks" {
  name        = "web-container-security-group"
  description = "Allow inbound access from the load balancer"
  vpc_id      = aws_vpc.main.id

  ingress {
    protocol    = "tcp"
    from_port   = var.container_port
    to_port     = var.container_port
    cidr_blocks = ["0.0.0.0/0"]
  }
}
