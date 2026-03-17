resource "aws_security_group" "allow_remote_admin" {
  name        = "allow_remote_admin"
  description = "Allow ssh and RDP inbound traffic"
  vpc_id      = "${aws_vpc.main.id}"
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.125.124.0/0"]
  }
 
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
