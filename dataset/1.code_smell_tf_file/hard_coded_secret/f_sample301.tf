resource "vsphere_virtual_machine" "worker" {

  extra_config = {
    "isolation.tools.copy.disable"         = "FALSE"
    "isolation.tools.paste.disable"        = "FALSE"
  }
}
