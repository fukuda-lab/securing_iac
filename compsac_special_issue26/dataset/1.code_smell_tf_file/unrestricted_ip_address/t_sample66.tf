resource "azurerm_network_security_rule" "allow_inbound_puppet_from_vms" {
  name                        = "allow-inbound-puppet-from-vms"
  priority                    = 4001
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "8140"
  source_address_prefix       = "Internet"
}
