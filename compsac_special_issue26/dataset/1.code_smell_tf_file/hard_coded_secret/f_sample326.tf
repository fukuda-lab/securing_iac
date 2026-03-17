resource "google_compute_instance" "openstack" {
    metadata = {
    enable-oslogin = "TRUE"
    ssh-keys = "ubuntu:${tls_private_key.ssh-key.public_key_openssh} ubuntu"
  }
}
