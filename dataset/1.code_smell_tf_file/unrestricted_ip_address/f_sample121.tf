resource "aws_security_group" "testing_sg" {
  name = "testing_sg"
  vpc_id = aws_vpc.testing.id
  # SSH access is controlled at NACL
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
    description = "Allow all"
  }
}
