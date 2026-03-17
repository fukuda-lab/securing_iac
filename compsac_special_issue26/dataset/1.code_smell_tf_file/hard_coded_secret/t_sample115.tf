resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  user_data = <<-EOF
              #!/bin/bash
              curl "https://get.my-app.com/install.sh?token=install_token_12345" | sh
              EOF
}
