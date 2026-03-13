resource "null_resource" "configure_instance" {
  connection {
    type        = "ssh"
    user        = "root"
    host        = "1.2.3.4"
    private_key = <<EOF
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAuQwKk1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1Qw
K1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1Qw
K1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1Qw
K1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1Qw
K1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1Qw
-----END RSA PRIVATE KEY-----
EOF
  }
  provisioner "remote-exec" {
    inline = ["echo 'config' > /etc/app.conf"]
  }
}
