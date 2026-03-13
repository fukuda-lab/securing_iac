resource "azurerm_network_security_group" "mytfsg" {
    name                = "${var.prefix}-NetworkSecurityGroup"
    location            = "${var.vm_location}"
    resource_group_name = "${azurerm_resource_group.mytfgroup.name}"

    security_rule {
        name                       = "SSH"
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
        name                       = "Jupyter"
        priority                   = 1002
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "${var.vm_jupyter_port}"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "RDP"
        priority                   = 1003
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "Jupyter_8888"
        priority                   = 1004
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "8888"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = "${var.prefix} env"
    }

    lifecycle {
        prevent_destroy = true
    }
}
