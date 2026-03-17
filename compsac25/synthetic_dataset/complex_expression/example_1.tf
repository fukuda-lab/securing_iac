resource "aws_instance" "example" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleInstance-${var.environment == "prod" ? "Production" : var.environment == "staging" ? "Staging" : "Development"}-${formatdate("YYYYMMDD", timestamp())}-${replace(sha1(file(var.user_data_file)), "/[^a-zA-Z0-9]+/", "")}"
  }
}
