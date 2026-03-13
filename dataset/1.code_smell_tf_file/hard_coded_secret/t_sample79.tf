resource "null_resource" "setup_artifactory" {
  provisioner "remote-exec" {
    inline = [
      "curl -H 'X-JFrog-Art-Api: AKCp8wV7Q2t9x3yZ4s5a6b7c8d9e0f1g2h3i4j5k6l7m8n9o0p' https://mycompany.jfrog.io/artifactory/api/system/ping"
    ]
  }
}
