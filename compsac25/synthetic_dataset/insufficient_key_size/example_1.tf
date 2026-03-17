resource "aws_key_pair" "example" {
  public_key = tls_private_key.example.public_key_openssh
}

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 1024
}
