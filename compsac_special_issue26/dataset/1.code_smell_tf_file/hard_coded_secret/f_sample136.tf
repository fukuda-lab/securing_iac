data "template_file" "text" {
  template = "[I am a search-app template. Data from my dependencies: vpc = ${data.terraform_remote_state.vpc.outputs.text}, redis = ${data.terraform_remote_state.redis.outputs.text}, example_module = ${module.example_module.text}]"
}
