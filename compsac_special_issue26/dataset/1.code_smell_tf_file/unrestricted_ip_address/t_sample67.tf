resource "azurerm_network_security_rule" "allow_inbound_ssh_from_internet_to_bounce" {
  name                        = "allow-inbound-ssh-from-internet-to-bounce"
  priority                    = 4000
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
}
