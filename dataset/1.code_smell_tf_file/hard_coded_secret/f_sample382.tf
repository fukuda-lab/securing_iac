resource "aws_instance" "master2" {
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/define_node_role.sh",
      "sudo /tmp/define_node_role.sh ${count.index} \"${var.role_order}\" ${var.all_role_nodes} ${var.etcd_only_nodes} ${var.etcd_cp_nodes} ${var.etcd_worker_nodes} ${var.cp_only_nodes} ${var.cp_worker_nodes}",
    ]
  }
  provisioner "file" {
    source      = "join_rke2_master.sh"
    destination = "/tmp/join_rke2_master.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/join_rke2_master.sh",
      "sudo /tmp/join_rke2_master.sh ${var.node_os} ${var.create_lb ? aws_route53_record.aws_route53[0].fqdn : aws_instance.master.public_ip} ${aws_instance.master.public_ip} ${local.node_token} ${var.rke2_version} ${self.public_ip} ${var.rke2_channel} ${var.cluster_type} \"${var.server_flags}\" ${var.install_mode} ${var.username} ${var.password} \"${var.install_method}\"",
    ]
  }
}
