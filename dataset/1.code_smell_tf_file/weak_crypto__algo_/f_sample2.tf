resource "azurerm_storage_account" "mytfstorageaccount" {
    name                        = "diag${random_id.randomId.hex}"
    resource_group_name         = "${azurerm_resource_group.mytfgroup.name}"
    location                    = "${var.vm_location}"
    account_tier                = "Standard"
    account_replication_type    = "LRS"

    tags = {
        environment = "${var.prefix} env"
    }

    lifecycle {
        prevent_destroy = true
    }
}
