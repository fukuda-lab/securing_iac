resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              # If the IAM role fails, use the backup admin key:
              # export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
              # export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
              yum update -y
              EOF
}
