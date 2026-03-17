resource "aws_instance" "web_server" {
  # FIXME: Update to latest Amazon Linux 2 AMI
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.public.id

  # TODO: Implement proper user data script
  user_data = <<-EOF
              #!/bin/bash
              echo "Placeholder user data script"
              # FIXME: Add proper error handling
              # TODO: Add monitoring agent installation
              EOF

  root_block_device {
    # TODO: Configure proper backup strategy
    volume_size = 8
  }

  # FIXME: Add proper IAM role
  # TODO: Implement instance monitoring
  monitoring = false

  tags = {
    Name = "web-server"
    # TODO: Add proper environment and cost center tags
  }
}
