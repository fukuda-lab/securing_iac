resource "azurerm_network_security_rule" "allow_outbound_ssh_from_infraci_agents_to_packer_vms" {
  provider                    = azurerm.jenkins-sponsorship
  name                        = "allow-outbound-ssh-from-infraci-agents-to-packer-vms"
  priority                    = 4080
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
}
