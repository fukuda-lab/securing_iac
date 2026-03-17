resource "null_resource" "bootstrap_config_provisioner" {
  provisioner "local-exec" {
    command = "echo 'password_md5: ${md5(random_password.app_db_password.result)}' > config.yaml"
  }
}
