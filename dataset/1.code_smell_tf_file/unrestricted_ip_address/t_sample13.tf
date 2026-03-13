resource "azurerm_network_security_group" "perf-nsg" {
  name                = "perf-nsg-${var.uuid}"
  location            = "East US"
  resource_group_name = "perf-resources-eastus"

  security_rule {
    name                       = "perf-nsg-allow-ssh"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "perf-nsg-allow-broker"
    priority                   = 1002
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "5672"
    source_address_prefix      = "*"
    destination_application_security_group_ids = [azurerm_application_security_group.utility-asg.id]
  }

  security_rule {
    name                       = "perf-nsg-allow-couchbase"
    priority                   = 1003
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = ["8091-8096", "9102", "9110", "18091-18096", "19102", "19110", "11209-11210","11207"]
    source_address_prefix      = "*"
    destination_application_security_group_ids = [azurerm_application_security_group.cluster-asg.id]
  }

  security_rule {
    name                       = "perf-nsg-allow-syncgateway"
    priority                   = 1004
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "4984-5025"
    source_address_prefix      = "*"
    destination_application_security_group_ids = [azurerm_application_security_group.syncgateway-asg.id]
  }

  tags = {
    deployment = var.global_tag != "" ? var.global_tag : null
  }
}
