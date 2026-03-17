resource "hcloud_server" "machine" {
  for_each = {
    for name, machine in var.machines :
    name => machine
  }

  name     = "${var.prefix}-${each.key}"
  ssh_keys = [hcloud_ssh_key.first.id]
  # boot into rescue OS
  rescue = "linux64"
}
