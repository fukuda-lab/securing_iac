resource "aws_security_group" "example" {
  name        = "example-security-group"
  description = "Example security group for demonstrating unrestricted IP address code smell"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
