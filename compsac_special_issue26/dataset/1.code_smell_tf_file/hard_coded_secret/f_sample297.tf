resource "nifcloud_instance" "bn" {

  instance_id    = "${local.az_short_name}${var.prefix}bn01"
  security_group = nifcloud_security_group.bn.group_name
  instance_type  = var.instance_type_bn

  user_data = templatefile("${path.module}/templates/userdata.tftpl", {
    private_ip_address = var.private_ip_bn
    ssh_port           = local.port_ssh
    hostname           = "${local.az_short_name}${var.prefix}bn01"
  })

  availability_zone = var.availability_zone
  accounting_type   = var.accounting_type
  image_id          = data.nifcloud_image.this.image_id
  key_name          = var.instance_key_name

  network_interface {
    network_id = "net-COMMON_GLOBAL"
  }
}
