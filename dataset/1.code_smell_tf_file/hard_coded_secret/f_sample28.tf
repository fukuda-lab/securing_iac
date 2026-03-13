data "template_file" "bindplane-agent-linux" {
  template = file("${path.module}/scripts/install.sh")
  vars = {
    secret_key = var.secret_key
    endpoint   = "${local.base_endpoint}/${var.agent_version}/linux-amd64/installer/bpagent-installer.sh"
  }
}
