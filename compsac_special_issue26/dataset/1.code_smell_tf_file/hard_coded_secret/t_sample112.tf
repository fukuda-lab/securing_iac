resource "null_resource" "create_env_file" {
  provisioner "file" {
    content     = "API_KEY=my-super-secret-api-key"
    destination = "/etc/app/.env"
  }
}
