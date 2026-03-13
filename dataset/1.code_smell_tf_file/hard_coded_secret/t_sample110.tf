resource "null_resource" "run_ansible" {
  provisioner "local-exec" {
    command = "ansible-playbook playbook.yml --extra-vars 'api_key=secret-ansible-key'"
  }
}
