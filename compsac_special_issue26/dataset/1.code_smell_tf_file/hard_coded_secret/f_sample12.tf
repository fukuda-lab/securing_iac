resource "aws_instance" "test-server" {
  ami                         = var.test_server_ami == null ? data.aws_ami.test.id : var.test_server_ami
  instance_type               = var.test_instance_type
  key_name                    = module.keys.key_name
  vpc_security_group_ids      = toset([aws_security_group.test-servers.id])
  associate_public_ip_address = var.test_public_ip
  subnet_id                   = (module.vpc.public_subnets)[0]
  tags = {
    Name = "consul-load-generator-server-${local.random_name}"
  }
  provisioner "remote-exec" {
    inline = [
      "export LB_ENDPOINT=${module.alb.this_lb_dns_name}",
      "k6 run -q /home/ubuntu/scripts/loadtest.js"
    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"
      timeout     = "1m"
      private_key = module.keys.private_key_pem
      host        = aws_instance.test-server.public_ip
    }
  }
}
