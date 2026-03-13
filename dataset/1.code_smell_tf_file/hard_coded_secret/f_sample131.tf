data "template_file" "text" {
  template = "[I am a bastion-host template. Data from my dependencies: vpc = ${data.terraform_remote_state.vpc.outputs.text}]"
}
