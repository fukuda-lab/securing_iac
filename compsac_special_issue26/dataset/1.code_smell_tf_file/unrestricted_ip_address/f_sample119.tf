resource "aws_security_group" "bat_sg" {
  name = "bat_sg"
  vpc_id = aws_vpc.bat.id
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all"
  }
  tags = {
    Name =  format("%s_general", var.bat)
  }
}
