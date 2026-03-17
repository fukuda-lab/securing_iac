variable "public_key_path" {}

resource "metal_ssh_key" "key1" {
    name       = "key1"
    public_key = file(var.public_key_path)
}
