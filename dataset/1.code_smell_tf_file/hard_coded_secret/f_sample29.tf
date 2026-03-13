data "template_file" "google-cloud-opts-agent-windows" {
  template = file("${path.module}/scripts/install.ps1")
  vars = {
    secret_key    = var.secret_key
    endpoint      = "${local.base_endpoint}/${var.agent_version}/windows-amd64/installer/bpagent-installer.ps1"
  }
}
