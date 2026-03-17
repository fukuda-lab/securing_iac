resource "aws_instance" "worker" {
  depends_on = [
    var.dependency
  ]
  ami = var.aws_ami
  instance_type = var.ec2_instance_class
  count = var.no_of_worker_nodes
  iam_instance_profile = "${var.iam_role}"
  connection {
    type = "ssh"
    user = var.aws_user
    host = self.public_ip
    private_key = "${file(var.access_key)}"
  }
}
