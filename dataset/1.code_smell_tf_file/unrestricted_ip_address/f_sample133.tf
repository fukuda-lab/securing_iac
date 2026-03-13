resource "aws_instance" "bastion-server" {
  ami                         = data.aws_ami.distro.id
  instance_type               = var.aws_bastion_size
  count                       = var.aws_bastion_num
  associate_public_ip_address = true
}
