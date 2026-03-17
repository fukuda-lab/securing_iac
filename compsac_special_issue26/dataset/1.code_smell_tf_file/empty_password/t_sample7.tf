variable "private_key_path" {}

# Create a device and add it to tf_project_1
resource "metal_device" "test" {
    connection {
        type = "ssh"
        host = metal_device.test[count.index].access_public_ipv4
        user = "root"
        private_key = file(var.private_key_path)
        agent = false
    }
}
