resource "aws_instance" "example" {
  ami           = "ami-123456"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance-${var.environment}-${contains(["prod", "staging"], var.environment) ? upper(var.project_name) : lower(var.project_name)}-${formatdate("YYYYMMDD", timestamp())}-${length(compact(split(",", replace(var.additional_tags, " ", "")))) > 0 ? join("-", compact(split(",", replace(var.additional_tags, " ", "")))) : "notags"}"
  }
}