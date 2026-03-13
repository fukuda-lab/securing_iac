resource "null_resource" "ecr_login" {
  provisioner "local-exec" {
    command = "docker login -u myuser -p mypassword 123456789012.dkr.ecr.us-east-1.amazonaws.com"
  }
}
