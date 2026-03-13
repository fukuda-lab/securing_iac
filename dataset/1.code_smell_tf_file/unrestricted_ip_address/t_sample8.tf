resource "aws_security_group" "trillian" {
  name        = "trillian"
  description = "Expose Rest, TPC and SSH endpoint to local cidr"

  ingress {
    from_port   = 8090
    to_port     = 8091
    protocol    = "tcp"
    cidr_blocks = ["${var.WHITELIST_CIDR}"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.WHITELIST_CIDR}"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
