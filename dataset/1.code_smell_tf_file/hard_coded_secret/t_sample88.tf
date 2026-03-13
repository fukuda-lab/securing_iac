resource "null_resource" "run_script" {
  provisioner "local-exec" {
    command = "/usr/bin/python3 /scripts/setup.py --username admin --password 'P@ssw0rd!' --api-key 'key-from-service'"
  }
}
