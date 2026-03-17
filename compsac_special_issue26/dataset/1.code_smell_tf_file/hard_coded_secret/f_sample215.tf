resource "google_compute_instance" "www" {
  metadata = {
    ssh-keys = "root:${file(var.public_key_path)}"
  }

  provisioner "file" {
    source      = var.install_script_src_path
    destination = var.install_script_dest_path

    connection {
      host        = self.network_interface.0.access_config.0.nat_ip
      type        = "ssh"
      user        = "root"
      private_key = file(var.private_key_path)
      agent       = false
    }
  }
}
