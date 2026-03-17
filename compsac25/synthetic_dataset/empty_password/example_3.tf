variable "admin_password" {
  description = "Administrator password for Windows instance"
  type        = string
  default     = ""
}

resource "aws_instance" "windows_server" {
  ami           = "ami-windows-2019"
  instance_type = "t2.micro"

  get_password_data = true

  user_data = <<-EOF
              <powershell>
              net user Administrator "${var.admin_password}"
              </powershell>
              EOF

  tags = {
    Name = "windows-server"
  }
}
