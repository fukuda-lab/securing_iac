resource "aws_instance" "k3s-server" {
  count = "${var.server_count}"
  instance_type = var.server_instance_type
  ami           = data.aws_ami.ubuntu.id
  user_data     = base64encode(templatefile("${path.module}/files/server_userdata.tmpl",
  {
    extra_ssh_keys = var.extra_ssh_keys,
    k3s_cluster_secret = local.k3s_cluster_secret,
    install_k3s_version = local.install_k3s_version,
    k3s_server_args = var.k3s_server_args,
    db_engine = var.db_engine,
    db_address = "${var.db_engine == "etcd" ? join(",",aws_instance.k3s_etcd.*.private_ip) : var.db_engine == "embedded-etcd" ? "null" : aws_db_instance.k3s_db[0].address}",
    db_name = var.db_name,
    db_username = var.db_username,
    db_password = var.db_password,
    use_ha = "${var.server_ha == 1 ? "true": "false"}",
    master_index = count.index,
    lb_address = var.domain_name,
    prom_worker_node_count = local.prom_worker_node_count,
    debug = var.debug,
    k3s_cluster_secret = local.k3s_cluster_secret,}))
  security_groups = [
    aws_security_group.k3s.name,
  ]

   root_block_device {
    volume_size = "30"
    volume_type = "gp2"
  }

   tags = {
    Name = "${local.name}-server-${count.index}"
    Role = "master"
    Leader = "${count.index == 0 ? "true" : "false"}"
  }
  provisioner "local-exec" {
      command = "sleep 10"
  }
}
