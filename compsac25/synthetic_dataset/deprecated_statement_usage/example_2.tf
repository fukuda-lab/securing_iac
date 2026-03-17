variable "environment" {
  default = "production"
}

variable "azs" {
  type = "list"  # Deprecated: Old type declaration syntax
}

resource "aws_instance" "web" {
  ami           = "${lookup(var.amis, var.region)}"  # Deprecated: Old interpolation
  instance_type = "${var.instance_type}"  # Deprecated: Unnecessary interpolation

  tags = "${merge(  # Deprecated: Old map merging syntax
    map(
      "Name", "web-server",
      "Environment", "${var.environment}"  # Deprecated: Double interpolation
    ),
    var.common_tags
  )}"

  provisioner "file" {
    source      = "${path.module}/script.sh"  # Deprecated: Unnecessary interpolation
    destination = "/tmp/script.sh"

    connection {
      type     = "ssh"
      user     = "${var.user}"  # Deprecated: Unnecessary interpolation
      password = "${var.password}"  # Deprecated: Unnecessary interpolation
    }
  }
}

output "instance_ip" {
  value = "${aws_instance.web.public_ip}"  # Deprecated: Unnecessary interpolation
}
