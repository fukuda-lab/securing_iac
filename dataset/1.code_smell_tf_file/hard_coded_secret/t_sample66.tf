resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  user_data     = <<-EOF
              #!/bin/bash
              export DB_PASSWORD='SuperSecretPassword'
              /usr/local/bin/start-app.sh
              EOF
}
