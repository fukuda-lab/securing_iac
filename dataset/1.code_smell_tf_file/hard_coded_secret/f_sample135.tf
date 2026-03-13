data "template_file" "text" {
  template = "[I am a frontend-app template. Data from my dependencies: vpc = ${data.terraform_remote_state.vpc.outputs.text}, bastion-host = ${data.terraform_remote_state.bastion_host.outputs.text}, backend-app = ${data.terraform_remote_state.backend_app.outputs.text}]"
}
