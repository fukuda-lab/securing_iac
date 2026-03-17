variable "environment" {}

resource "aws_instance" "example" {
  instance_type = var.environment == "production" ? "t3.large" : null
}