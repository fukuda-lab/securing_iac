resource "aws_security_group" "bad_example" {
  name        = "bad_example_sg"
  description = "Security group with invalid port range"
  vpc_id      = "vpc-123456"

  ingress {
    from_port   = 80
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }
}
