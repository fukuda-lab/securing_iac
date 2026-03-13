locals {
  service_auth_token = "4eC39HqLyjWDarjtT1zdp7dc"
}
resource "null_resource" "use_local_secret" {
  provisioner "local-exec" {
    command = "echo ${local.service_auth_token} > /tmp/token"
  }
}
