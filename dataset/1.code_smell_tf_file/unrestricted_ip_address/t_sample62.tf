resource "aws_security_group" "testing_sg" {
  ingress {
    from_port = 33434
    to_port = 33534
    protocol = "udp"
    cidr_blocks = [
      "0.0.0.0/0"]
    description = "Traceroute Access"
  }
}
