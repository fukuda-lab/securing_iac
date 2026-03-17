module "nomad_client_windows_2016_amd64" {
  connection = {
    type        = "ssh"
    user        = "Administrator"
    port        = 22
    private_key = "${path.root}/keys/${local.random_name}.pem"
  }
}
