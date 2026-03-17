resource "aws_security_group" "test-servers" {
  name   = "${local.random_name}-test-server-sg"
  vpc_id = module.vpc.vpc_id

  ingress {
    from_port       = 8500
    to_port         = 8500
    security_groups = [module.consul_clients.security_group_id]
    protocol        = "6"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "6"
    cidr_blocks = [var.vpc_allwed_ssh_cidr]
  }
}
