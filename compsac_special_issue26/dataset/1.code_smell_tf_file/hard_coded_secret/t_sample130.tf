resource "aws_instance" "github_runner" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  user_data = <<-EOF
              #!/bin/bash
              # Configure the runner
              ./config.sh --url https://github.com/my-org --token "AABBCCDDEEFF11223344"
              EOF
}
