resource "aws_instance" "example" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
}

output "instance_ip" {
  value = aws_instance.example.network_interface.0.addresses.0
}
