resource "null_resource" "weak_remote_config" {
  provisioner "local-exec" {
    command = "echo 'password_md5: ${md5(random_password.app_password.result)}' > config.yaml"
  }
}
