resource "aws_instance" "example" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
  tags = {
    Name = "${var.environment}-${lookup(var.service_names, var.service_type, "default")}-${formatdate("YYYYMMDD", timestamp())}-${substr(md5(upper(join("-", [var.environment, var.service_type, formatdate("YYYYMMDDHH", timestamp())]))), 0, 6)}"
  }
}