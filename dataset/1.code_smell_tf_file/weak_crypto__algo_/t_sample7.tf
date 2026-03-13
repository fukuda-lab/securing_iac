resource "null_resource" "config_file_integrity" {
  triggers = {
    config_file_path = "${path.module}/config.json"
  }

  provisioner "local-exec" {
    command = "md5sum ${self.triggers.config_file_path} > checksum.md5"
  }
}
