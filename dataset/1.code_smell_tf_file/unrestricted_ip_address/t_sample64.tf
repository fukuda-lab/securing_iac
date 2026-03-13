resource "aws_security_group" "testing_sg" {
  name = "testing_sg"
  vpc_id = aws_vpc.testing.id
  # SSH access is controlled at NACL
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
    description = "SSH Access"
  }
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
    description = "HTTP Access"
  }
}
