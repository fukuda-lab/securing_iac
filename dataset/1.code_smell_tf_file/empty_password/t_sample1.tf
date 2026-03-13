variable "secret" {
  type      = string
  default   = ""
  sensitive = true
}

resource "aws_instance" "foo" {
  provisioner "test" {
    test_string = var.secret
  }
}
