resource "null_resource" "docker_login" {
  provisioner "local-exec" {
    command = "echo 'MyDockerHubPassword!' | docker login --username myuser --password-stdin"
  }
}
