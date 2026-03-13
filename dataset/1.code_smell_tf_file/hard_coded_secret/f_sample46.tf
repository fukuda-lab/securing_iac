resource "azurerm_virtual_machine" "mytfvm" {
    count                 = "${var.vm_total_no_machines}"
    name                  = "${var.prefix}-${count.index + var.vm_id_offset}"
    location              = "${var.vm_location}"
    resource_group_name   = "${azurerm_resource_group.mytfgroup.name}"
    network_interface_ids = ["${element(azurerm_network_interface.mytfnic.*.id, count.index)}"]
    vm_size               = "${var.vm_size}"

    storage_os_disk {
        name              = "${var.prefix}-${count.index + var.vm_id_offset}-OsDisk"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Standard_LRS"
    }

    #storage_data_disk {
    #    name              = "${var.prefix}-${count.index}-DataDisk"
    #    managed_disk_type = "Standard_LRS"
    #    create_option     = "Empty"
    #    lun               = 0
    #    disk_size_gb      = "50"
    #}
    
    delete_os_disk_on_termination = true
    delete_data_disks_on_termination = true

    storage_image_reference {
        id = "${data.azurerm_shared_image.prebuilt.id}"
    }

    os_profile {
        computer_name  = "${var.prefix}-${count.index + var.vm_id_offset}"
        admin_username = "${var.vm_username}"
        admin_password = "${var.vm_password}"
    }
    
    os_profile_linux_config {
        disable_password_authentication = false
    }

    boot_diagnostics {
        enabled = "true"
        storage_uri = "${azurerm_storage_account.mytfstorageaccount.primary_blob_endpoint}"
    }

    connection {
        user     = "${var.vm_username}"
        password = "${var.vm_password}"
        host = "${var.prefix}-${count.index + var.vm_id_offset}.${var.vm_location}.cloudapp.azure.com"
        timeout = "10m"
    }

    provisioner "file" {
        source      = "./modules/sirf-gpu-offset/install_gpu_rdp.sh"
        destination = "/tmp/install_rdp.sh"
    }

    provisioner "remote-exec" {
        inline = [
            "sudo bash /tmp/install_rdp.sh",
            "sudo cp /tmp/install_rdp.sh /root/install_rdp.sh"
        ]
    }

    tags = {
        environment = "${var.prefix} env"
    }

}
