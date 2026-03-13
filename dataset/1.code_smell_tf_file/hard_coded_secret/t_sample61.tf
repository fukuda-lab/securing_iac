resource "null_resource" "deploy_app" {
  provisioner "local-exec" {
    command = "curl -X POST -H 'Authorization: Bearer random_token_abcdef9876543210' https://api.internal.service/deploy"
  }
}
