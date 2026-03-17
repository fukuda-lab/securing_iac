variable "environment" {
  description = "Deployment environment"
  type        = string
}

resource "aws_instance" "example" {
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleInstance"
    Environment = var.environment == "prod" ? "Production" : null
  }
}

resource "aws_instance" "example_fixed" {
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleInstanceFixed"
    Environment = var.environment == "prod" ? "Production" : var.environment == "dev" ? "Development" : "Unknown"
  }
}