resource "local_file" "spinnaker_pipeline" {
  filename = "pipeline.json"
  content  = jsonencode({
    name = "deploy-app"
    stages = [
      {
        name = "deploy"
        type = "deploy"
        config = {
          account = "my-k8s-account"
          password = "my-spinnaker-password"
        }
      }
    ]
  })
}
