resource "null_resource" "deploy_app" {
  provisioner "local-exec" {
    command = "curl -X POST -H 'Authorization: Bearer my-secret-jwt-token' https://api.internal.service/deploy"
  }
}
